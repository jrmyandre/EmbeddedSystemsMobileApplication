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
    apiKey: 'AIzaSyDr8VBZxt_LD9f5I81PrNDpYcS-P6sPR00',
    appId: '1:514558485013:web:95bc615dbc7b523436641c',
    messagingSenderId: '514558485013',
    projectId: 'hygroplant',
    authDomain: 'hygroplant.firebaseapp.com',
    databaseURL: 'https://hygroplant-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hygroplant.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrwjUB4uf0KTcQlNbkEept51eGUr50vI8',
    appId: '1:514558485013:android:c1cf11aa9926c9d036641c',
    messagingSenderId: '514558485013',
    projectId: 'hygroplant',
    databaseURL: 'https://hygroplant-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hygroplant.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXLhip9KjSV6YZJ04anfK8vF7nUuknYoQ',
    appId: '1:514558485013:ios:69f842c06689aaf936641c',
    messagingSenderId: '514558485013',
    projectId: 'hygroplant',
    databaseURL: 'https://hygroplant-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hygroplant.appspot.com',
    iosBundleId: 'com.example.hygroplant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXLhip9KjSV6YZJ04anfK8vF7nUuknYoQ',
    appId: '1:514558485013:ios:69f842c06689aaf936641c',
    messagingSenderId: '514558485013',
    projectId: 'hygroplant',
    databaseURL: 'https://hygroplant-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hygroplant.appspot.com',
    iosBundleId: 'com.example.hygroplant',
  );
}
