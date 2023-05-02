import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD1DQow_RySEAkpX210meH8fZaD8nip_u0",
            authDomain: "hummy-10309.firebaseapp.com",
            projectId: "hummy-10309",
            storageBucket: "hummy-10309.appspot.com",
            messagingSenderId: "1051061878440",
            appId: "1:1051061878440:web:b83dad1941a169e5394c9d"));
  } else {
    await Firebase.initializeApp();
  }
}
