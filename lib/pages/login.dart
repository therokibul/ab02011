
import 'package:ab02011/pages/navigation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum MobileVarificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  MobileVarificationState currentState =
      MobileVarificationState.SHOW_MOBILE_FORM_STATE;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;

  bool showLoading = false;

  void singInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = false;
    });
    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = true;
      });
      if (authCredential.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NavBar()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      _scaffoldkey.currentState!
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }

  getMobileFormWidget(context) {
    return Center(
      child: Column(
        children: [
          TextField(
            controller: phoneController,
            decoration: InputDecoration(
              hintText: 'Phone Number',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                showLoading = true;
              });
              await _auth.verifyPhoneNumber(
                phoneNumber: phoneController.text,
                verificationCompleted: (phoneAuthCredential) async {
                  setState(() {
                    showLoading = false;
                  });
                  // singInWithPhoneAuthCredential(phoneAuthCredential);
                },
                verificationFailed: (verificationFailed) async {
                  setState(() {
                    showLoading = false;
                  });
                  _scaffoldkey.currentState!.showSnackBar(SnackBar(
                      content: Text(verificationFailed.message.toString())));
                },
                codeSent: (verificarionId, resendingToken) async {
                  setState(() {
                    showLoading = false;
                    currentState = MobileVarificationState.SHOW_OTP_FORM_STATE;
                    this.verificationId = verificarionId;
                  });
                },
                codeAutoRetrievalTimeout: (verificationID) async {},
              );
            },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }

  getOtpFormWidget(context) {
    return Column(
      children: [
        TextField(
          controller: otpController,
          decoration: InputDecoration(
            hintText: 'Enter OTP',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () async {
            PhoneAuthCredential phoneAuthCredential =
                PhoneAuthProvider.credential(
                    verificationId: verificationId,
                    smsCode: otpController.text);
            singInWithPhoneAuthCredential(phoneAuthCredential);
          },
          child: Text('Verify'),
        ),
      ],
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: showLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : currentState == MobileVarificationState.SHOW_MOBILE_FORM_STATE
                  ? getMobileFormWidget(context)
                  : getOtpFormWidget(context),
        ),
      ),
    );
  }
}
