import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB8J_ADX_MyMwv8KWbheoJn9ZIgUi6NdmA",
            authDomain: "api-sippe.firebaseapp.com",
            projectId: "api-sippe",
            storageBucket: "api-sippe.appspot.com",
            messagingSenderId: "844575851549",
            appId: "1:844575851549:web:1cdc1895987bf303def2f4",
            measurementId: "G-R378V89ZW4"));
  } else {
    await Firebase.initializeApp();
  }
}
