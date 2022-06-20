// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCFOD1BvxI89qU-9muKUw40f0lLDdBP-fY',
    appId: '1:13169678386:web:50bc7578d1d454d1f0442b',
    messagingSenderId: '13169678386',
    projectId: 'barcodes-344e9',
    authDomain: 'barcodes-344e9.firebaseapp.com',
    storageBucket: 'barcodes-344e9.appspot.com',
    measurementId: 'G-22XV0GP8VK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWNl-n8btlQIFjpGVArjzg8Z4zkdzYxBc',
    appId: '1:13169678386:android:6c39bbd3a36adb50f0442b',
    messagingSenderId: '13169678386',
    projectId: 'barcodes-344e9',
    storageBucket: 'barcodes-344e9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC-N0dXYHGVnGU7ph4jOUbEWUiIwiVa58',
    appId: '1:13169678386:ios:0a21b5117a9b6fecf0442b',
    messagingSenderId: '13169678386',
    projectId: 'barcodes-344e9',
    storageBucket: 'barcodes-344e9.appspot.com',
    iosClientId: '13169678386-1t0sgiderui28jia7gt9do2f7v5dktun.apps.googleusercontent.com',
    iosBundleId: 'com.example.scannerFlutter',
  );
}
