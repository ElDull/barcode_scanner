import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scanner_flutter/FirestoreDB.dart';
import 'package:scanner_flutter/InfoScreen.dart';
class ViewItems extends StatelessWidget {
  final String barcode;
  const ViewItems({super.key, required this.barcode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items will show here'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}







