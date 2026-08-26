import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyDwyxDDqTkbfv87OHCPPIX9dBJjKkz2P1g',
        appId: '1:241487336968:android:d4fda378be3fd8cad7a3bd',
        messagingSenderId: '241487336968',
        projectId: 'may31-4805a',
        storageBucket: 'may31-4805a.firebasestorage.app',
      ),
    ).timeout(const Duration(seconds: 15));
  } catch (e) {
    // Firebase fail ho to bhi app khulni chahiye, splash pe nahi atakni
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'May31',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      home: const LoginScreen(),
    );
  }
}
