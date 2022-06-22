import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner_flutter/ViewItems.dart';

class InfoScreen extends StatelessWidget {
  final String barcode;
  const InfoScreen({required this.barcode, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Info'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(barcode),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a Item Name',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a Item Price',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ViewItems(barcode: '')),);
              },
              child: const Text('Add Item'),
            ),
          ],
        ),
      ),
    );
  }
}
class ItemsModel{
  final String ItemName;
  final String ItemPrice;
  final String ItemCode;

  ItemsModel({required this.ItemName,
    required this.ItemPrice,
    required this.ItemCode

  });
  factory ItemsModel.fromDocument(DocumentSnapshot doc){
    return ItemsModel(ItemName: doc['ItemName'], ItemPrice: doc['ItemPrice'], ItemCode:doc['ItemCode']);
  }
}
