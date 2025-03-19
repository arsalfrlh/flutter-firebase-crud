import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:userfire/firebase_options.dart';
import 'package:userfire/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //gunakan konfigurasi ini jika ingin menggunakan firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); //untuk menghubungkan ke platform secara default 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crud User',
      home: HomePage(),
    );
  }
}
