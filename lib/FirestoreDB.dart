import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirestoreDB {
  final db = FirebaseFirestore.instance;

  Future<List> getAllItems() async {
    try {
      var res = await db.collection("items").get().then(
            (e) => {
              for (var doc in e.docs) {print("${doc.id} => ${doc.data()}")}
            },
          );
      return [1, 2];
    } catch (err) {
      print("Caught Error");
      return [1, 2];
    }
  }
}
