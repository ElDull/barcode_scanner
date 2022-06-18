import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerApp extends StatefulWidget {
  @override
  _ScannerAppState createState() => _ScannerAppState();
}

class _ScannerAppState extends State<ScannerApp> {
  String _scannedBarcode = "Unknown";

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanBarcode() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel Scan", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = "Failed to get platform version.";
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    if (!mounted) return;

    setState(() {
      _scannedBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Barcode Scanner")),
            body: Builder(builder: (BuildContext ctx) {
              return Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () => scanBarcode(),
                        child: Text("Scan Barcode")),
                    Text(
                      'Scan Result: $_scannedBarcode\n',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              );
            })));
  }
}

class ScanButton extends StatelessWidget {
  const ScanButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext ctx) {
    return ElevatedButton(onPressed: onPressed, child: const Text("Scan"));
  }
}

void main() {
  runApp(ScannerApp());
}
