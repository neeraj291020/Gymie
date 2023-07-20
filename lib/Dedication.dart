import 'main.dart';
import 'package:flutter/material.dart';

class Dedication extends StatefulWidget {
  const Dedication({super.key});

  @override
  State<Dedication> createState() => _DedicationState();
}

class _DedicationState extends State<Dedication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 1200,
            width: 1200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/45.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 580,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(120, 0, 20, 0),
                  child: Text(
                    'Dedicated To My Beloved Brother',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Lugrasimo',
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite,
                  size: 39,
                  color: Colors.yellowAccent,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(72, 0, 10, 00),
                  child: Text(
                    'Karan Chanchlani',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Caveat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100.0, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'LogIn',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
