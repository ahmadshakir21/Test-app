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
    apiKey: 'AIzaSyC6pZQ5eLy5DIl-3n048tGeeTgn3WuL11s',
    appId: '1:640483797083:web:c5932ece95f73c1503f77e',
    messagingSenderId: '640483797083',
    projectId: 'flutter-firebase-a92a7',
    authDomain: 'flutter-firebase-a92a7.firebaseapp.com',
    storageBucket: 'flutter-firebase-a92a7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbJXu1Epst9RRtpx7AYqKiQWOHQi0wgX0',
    appId: '1:640483797083:android:260a3143649a9cf703f77e',
    messagingSenderId: '640483797083',
    projectId: 'flutter-firebase-a92a7',
    storageBucket: 'flutter-firebase-a92a7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-uWG2aeBpkQgHG3sGM_pzlRzpNS_yQSs',
    appId: '1:640483797083:ios:b2d1a23828cef46303f77e',
    messagingSenderId: '640483797083',
    projectId: 'flutter-firebase-a92a7',
    storageBucket: 'flutter-firebase-a92a7.appspot.com',
    iosClientId: '640483797083-qsjvma22lvih41t92pifqcemrb6va1kn.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-uWG2aeBpkQgHG3sGM_pzlRzpNS_yQSs',
    appId: '1:640483797083:ios:b2d1a23828cef46303f77e',
    messagingSenderId: '640483797083',
    projectId: 'flutter-firebase-a92a7',
    storageBucket: 'flutter-firebase-a92a7.appspot.com',
    iosClientId: '640483797083-qsjvma22lvih41t92pifqcemrb6va1kn.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
