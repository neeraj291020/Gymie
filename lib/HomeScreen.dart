import 'main.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Dedication.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 1000,
            width: 1000,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new NetworkImage(
                    "https://images.unsplash.com/photo-1577221084712-45b0445d2b00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=796&q=80"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                WavyAnimatedTextKit(
                  text: ['Gymie'],
                  textStyle: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontFamily: 'Caveat',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 60),
                    child: TypewriterAnimatedTextKit(
                      text: ['A Complete Fitness App'],
                      textStyle: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dedication');
                  },
                  child: Icon(
                    Icons.fitness_center,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
