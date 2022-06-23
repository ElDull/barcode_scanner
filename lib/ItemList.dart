import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  final Stream<QuerySnapshot> _itemStream =
      FirebaseFirestore.instance.collection("items").snapshots();

  @override
  Widget build(BuildContext ctx) {
    return Material(
        child: StreamBuilder<QuerySnapshot>(
            stream: _itemStream,
            builder: (BuildContext ctx, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong, please try again.');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading...");
              }
              return ListView(
                  padding: const EdgeInsets.all(8),
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    return ListTile(
                      title: Text(data["code"]),
                      subtitle: Text(data["name"]),
                    );
                  }).toList());
            }));
  }
}
