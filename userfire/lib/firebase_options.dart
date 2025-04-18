// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBv6BulVA_EvR9fbN6ZLbD2_Ie8wLQoBFE',
    appId: '1:275033034921:web:ed8749156686b64de459b8',
    messagingSenderId: '275033034921',
    projectId: 'userfire-f5cc5',
    authDomain: 'userfire-f5cc5.firebaseapp.com',
    storageBucket: 'userfire-f5cc5.firebasestorage.app',
    measurementId: 'G-35Y58D36V1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoITIrwlt7QGjKsq-Uy5zwUKTxfAFHTUs',
    appId: '1:275033034921:android:4006c7afb46dddcce459b8',
    messagingSenderId: '275033034921',
    projectId: 'userfire-f5cc5',
    storageBucket: 'userfire-f5cc5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIqR_zsdDYvGOZNTeB22j008oef7yDX2E',
    appId: '1:275033034921:ios:1d9e73a4eb9e3c93e459b8',
    messagingSenderId: '275033034921',
    projectId: 'userfire-f5cc5',
    storageBucket: 'userfire-f5cc5.firebasestorage.app',
    iosBundleId: 'com.example.userfire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDIqR_zsdDYvGOZNTeB22j008oef7yDX2E',
    appId: '1:275033034921:ios:1d9e73a4eb9e3c93e459b8',
    messagingSenderId: '275033034921',
    projectId: 'userfire-f5cc5',
    storageBucket: 'userfire-f5cc5.firebasestorage.app',
    iosBundleId: 'com.example.userfire',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBv6BulVA_EvR9fbN6ZLbD2_Ie8wLQoBFE',
    appId: '1:275033034921:web:74498a9291527229e459b8',
    messagingSenderId: '275033034921',
    projectId: 'userfire-f5cc5',
    authDomain: 'userfire-f5cc5.firebaseapp.com',
    storageBucket: 'userfire-f5cc5.firebasestorage.app',
    measurementId: 'G-DYFT6HFS4T',
  );
}
