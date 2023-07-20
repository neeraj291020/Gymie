import 'package:flutter/material.dart';
import 'package:gymie/HomeScreen.dart';
import 'package:gymie/Success.dart';
import 'Dedication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gymie/Chest.dart';
import 'Biceps.dart';
import 'Triceps.dart';
import 'package:gymie/LogIn.dart';
import 'Back.dart';
import 'Legs.dart';
import 'Shoulder.dart';
import 'Abs.dart';
import 'package:gymie/Register.dart';
import 'package:gymie/Success.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/dedication': (context) => const Dedication(),
        '/chest': (context) => const Chest(),
        '/biceps': (context) => const Biceps(),
        '/triceps': (context) => const Triceps(),
        '/back': (context) => const Back(),
        '/shoulder': (context) => const Shoulder(),
        '/abs': (context) => const Abs(),
        '/legs': (context) => const Legs(),
        '/signup': (context) => const SignUp(),
        '/login': (context) => const LogIn(),

        '/success': (context) => const Success(),

        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
