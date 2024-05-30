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
    apiKey: 'AIzaSyC-SBx1xmHV4Pd60MwPTHYmmdIo3sOrFPM',
    appId: '1:542055759500:web:0d58b490f949fa9b9c05a9',
    messagingSenderId: '542055759500',
    projectId: 'task-sample-firebase',
    authDomain: 'task-sample-firebase.firebaseapp.com',
    storageBucket: 'task-sample-firebase.appspot.com',
    measurementId: 'G-P2B1J7Y5BM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_xpQXF3Iz4y2cPh5-TK-TRqoZqB5QGYo',
    appId: '1:542055759500:android:0b2ceeb02a83b1fa9c05a9',
    messagingSenderId: '542055759500',
    projectId: 'task-sample-firebase',
    storageBucket: 'task-sample-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJ4OpEL_lOScNwgN71Dw-Dj4rrKhq9tDc',
    appId: '1:542055759500:ios:8b40b2fc0ba7d1f69c05a9',
    messagingSenderId: '542055759500',
    projectId: 'task-sample-firebase',
    storageBucket: 'task-sample-firebase.appspot.com',
    iosClientId: '542055759500-798bt40gcik76m3ahsfujvkkc4eunk8j.apps.googleusercontent.com',
    iosBundleId: 'com.example.enoikiou',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJ4OpEL_lOScNwgN71Dw-Dj4rrKhq9tDc',
    appId: '1:542055759500:ios:8b40b2fc0ba7d1f69c05a9',
    messagingSenderId: '542055759500',
    projectId: 'task-sample-firebase',
    storageBucket: 'task-sample-firebase.appspot.com',
    iosClientId: '542055759500-798bt40gcik76m3ahsfujvkkc4eunk8j.apps.googleusercontent.com',
    iosBundleId: 'com.example.enoikiou',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-SBx1xmHV4Pd60MwPTHYmmdIo3sOrFPM',
    appId: '1:542055759500:web:5deb376214a083ab9c05a9',
    messagingSenderId: '542055759500',
    projectId: 'task-sample-firebase',
    authDomain: 'task-sample-firebase.firebaseapp.com',
    storageBucket: 'task-sample-firebase.appspot.com',
    measurementId: 'G-TG4NX23S7M',
  );
}