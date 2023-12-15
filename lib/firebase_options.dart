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
        return macos;
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
    apiKey: 'AIzaSyD8t2QeG5N6cMJW0dOfABk5qF12tFJgi5c',
    appId: '1:286035927549:web:eb08ad0980546c1ede3994',
    messagingSenderId: '286035927549',
    projectId: 'fir-test-8fe50',
    authDomain: 'fir-test-8fe50.firebaseapp.com',
    databaseURL: 'https://fir-test-8fe50-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-8fe50.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIU0Tc-B1Vpb-iK7F3nNEyzMo65i1YEMs',
    appId: '1:286035927549:android:66a4e6b8a63a5f16de3994',
    messagingSenderId: '286035927549',
    projectId: 'fir-test-8fe50',
    databaseURL: 'https://fir-test-8fe50-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-8fe50.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDs2VtwQbPmsty1CiHDqU-M25AD_gDHw_g',
    appId: '1:286035927549:ios:2ebea0989790dba9de3994',
    messagingSenderId: '286035927549',
    projectId: 'fir-test-8fe50',
    databaseURL: 'https://fir-test-8fe50-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-8fe50.appspot.com',
    iosBundleId: 'com.example.ostadFlutterFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDs2VtwQbPmsty1CiHDqU-M25AD_gDHw_g',
    appId: '1:286035927549:ios:45860d5e9312ecf0de3994',
    messagingSenderId: '286035927549',
    projectId: 'fir-test-8fe50',
    databaseURL: 'https://fir-test-8fe50-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-8fe50.appspot.com',
    iosBundleId: 'com.example.ostadFlutterFirebase.RunnerTests',
  );
}
