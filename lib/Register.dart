import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;

  String password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 4000,
            width: 4000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://wallpaperaccess.com/full/1108004.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 8),
                    child: Text(
                      'Register Yourself !! ',
                      style: TextStyle(
                        color: Colors.purple,
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
                          color: Colors.yellowAccent,
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
                          hintStyle: TextStyle(color: Colors.yellowAccent),
                          hintText: "Enter Your Password"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () async {
                      // print(email);
                      // print(password);
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);
                        if (newUser != null) {
                          Navigator.pushNamed(context, '/login');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Icon(
                      Icons.login_rounded,
                      size: 70,
                      color: Colors.pink,
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
