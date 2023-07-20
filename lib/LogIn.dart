import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 4200,
            width: 4200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://rukminim2.flixcart.com/image/850/1000/kklhbbk0/poster/4/r/q/medium-gym-quotes-wall-posters-for-home-restaurant-hospital-original-imafzwp9puvednmg.jpeg?q=90'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 270,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 8),
                    child: Text(
                      'Log In Please !! ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Caveat',
                        fontSize: 70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 55, 0),
                    child: TextField(
                      onChanged: (event) {
                        email = event;
                      },
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 30,
                          fontFamily: 'Lobster'),
                      decoration: InputDecoration(
                        fillColor: Colors.pinkAccent,
                        hintStyle: TextStyle(
                          color: Colors.cyanAccent,
                        ),
                        hintText: "Enter Your Email Id",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 30, 0),
                    child: TextField(
                      onChanged: (event) {
                        password = event;
                      },
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 30,
                          fontFamily: 'Lobster'),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.cyanAccent),
                          hintText: "Enter Your Password"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: TextButton(
                      onPressed: () async {
                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          if (user != null) {
                            Navigator.pushNamed(context, '/success');
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 50,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
