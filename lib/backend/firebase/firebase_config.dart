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
            appId: "1:844575851549:web:97f421faf5022904def2f4",
            measurementId: "G-4H5YXPRY9L"));
  } else {
    await Firebase.initializeApp();
  }
}
