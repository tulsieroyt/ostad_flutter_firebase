import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_firebase/app.dart';
import 'package:ostad_flutter_firebase/firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const FootballApp());
}


