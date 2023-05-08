import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD9kAA83JBdsknPkbXS97ZLICLUG5rZTF0",
            authDomain: "facepresentrealtime.firebaseapp.com",
            projectId: "facepresentrealtime",
            storageBucket: "facepresentrealtime.appspot.com",
            messagingSenderId: "879632520696",
            appId: "1:879632520696:web:32d80e98a4a144790f720d",
            measurementId: "G-QZK1T2QMDY"));
  } else {
    await Firebase.initializeApp();
  }
}
