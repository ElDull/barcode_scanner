import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:scanner_flutter/screens/main.dart';
=======
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:scanner_flutter/InfoScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scanner_flutter/ItemList.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      log(barcodeScanRes);
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
                        onPressed: () async => {
                              await scanBarcode(),
                              Navigator.push(
                                  ctx,
                                  MaterialPageRoute(
                                      builder: (ctx) =>
                                          InfoScreen(barcode: _scannedBarcode)))
                            },
                        child: const Text("Scan Barcode")),
                    ElevatedButton(
                        onPressed: () => {
                              Navigator.push(
                                  ctx,
                                  MaterialPageRoute(
                                      builder: (ctx) => ItemList()))
                            },
                        child: const Text("View Items")),
                  ],
                ),
              );
            })));
  }
}
>>>>>>> fa3c1d1 (basic item list view)

import 'Menu.dart';
void main() async {
<<<<<<< HEAD
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: ScannerApp()),
  );
}
=======
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ScannerApp());
}
>>>>>>> fa3c1d1 (basic item list view)
