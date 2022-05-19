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
    apiKey: 'AIzaSyBv9huKADUG8Lp7gkWZuu9JCwnqK9lxkxo',
    appId: '1:371404413681:web:6831000b7d48d438e1e750',
    messagingSenderId: '371404413681',
    projectId: 'subscribe-sneaker',
    authDomain: 'subscribe-sneaker.firebaseapp.com',
    storageBucket: 'subscribe-sneaker.appspot.com',
    measurementId: 'G-FNGN6014CB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2cBnG8x3SAWcULTdKhJQhn4RA83EO_q4',
    appId: '1:371404413681:android:0b2c35a74c311b6de1e750',
    messagingSenderId: '371404413681',
    projectId: 'subscribe-sneaker',
    storageBucket: 'subscribe-sneaker.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnJhUTc6GwnTO1-ml7m0-Bq8wfByUMsCM',
    appId: '1:371404413681:ios:71cd38b42e3cc51be1e750',
    messagingSenderId: '371404413681',
    projectId: 'subscribe-sneaker',
    storageBucket: 'subscribe-sneaker.appspot.com',
    iosClientId: '371404413681-3mn15j7bljfo4l8e9q8rqhsph7qlmb34.apps.googleusercontent.com',
    iosBundleId: 'com.example.naeRa',
  );
}