import 'package:flutter/material.dart';
import 'package:ostad_flutter_firebase/ui/firebase_football_app.dart';

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirebaseStudentApp(),
      theme: ThemeData(primaryColor: Colors.blue, useMaterial3: false),
    );
  }
}
