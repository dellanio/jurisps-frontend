import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZCN98NIlNu0X193F66UMN8MrXH5d8Kjw",
            authDomain: "jurisps.firebaseapp.com",
            projectId: "jurisps",
            storageBucket: "jurisps.appspot.com",
            messagingSenderId: "479178180291",
            appId: "1:479178180291:web:dcf313efdbb9f549ff8476",
            measurementId: "G-CESPYX6QPN"));
  } else {
    await Firebase.initializeApp();
  }
}
