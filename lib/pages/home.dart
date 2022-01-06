import 'package:ab02011/widgets/appbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: 'Name'),
          ),
          TextField(
            controller: ageController,
            decoration: InputDecoration(hintText: 'Age'),
          ),
          ElevatedButton(onPressed: (){
            FirebaseFirestore.instance.collection('data').add({
              'name' : nameController.text,
              'Age' : ageController.text,
            });
          }, child: Text('Update')),


          Expanded(child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('data').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          
            if(!snapshot.hasData){
              
              return Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return ListView(
                children: snapshot.data!.docs.map((user){
                  return Card(
                    child: Column(
                      children: [
                        Text(user['name']),
                        Text(user['Age']),
                      ],
                    ),
                  );
                }).toList(),
                
                );
            }
            }
            )
          
          ),
        ],
      ),),
    );
  }
}
