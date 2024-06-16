import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDFVSCzNUkNWxzlyxXlLQuMe-QkQoey7TI",
            authDomain: "socialsync-33f42.firebaseapp.com",
            projectId: "socialsync-33f42",
            storageBucket: "socialsync-33f42.appspot.com",
            messagingSenderId: "232062336767",
            appId: "1:232062336767:web:1223b3f9695679b0b056ca"));
  } else {
    await Firebase.initializeApp();
  }
}
