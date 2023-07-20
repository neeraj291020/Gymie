import 'package:animated_text_kit/animated_text_kit.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: TypewriterAnimatedTextKit(
              text: ['Gymie - Your Complete Fitness Partner 🏋️‍'],
              textStyle: TextStyle(
                color: Colors.yellow,
                fontSize: 18,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/chest');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Chest Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://starsbiopoint.com/wp-content/uploads/2022/06/Tiger-Shroff-Height.webp')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/biceps');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Biceps Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://baggout.com/wp-content/uploads/2017/10/Tiger-Shroff1-866x487.jpg')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/triceps');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Triceps Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://www.borntough.com/cdn/shop/articles/A_beginners_Guide-_The_Best_10_Tricep_Exercises_for_Beginners.jpg?v=1637678733')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/back');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Back Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://fabulousbody.com/wp-content/uploads/2017/12/Hrithik-Roshan-Body-Transformation_-Hrithik-Roshan-Workout-Diet.png')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shoulder');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Shoulder Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://workoutinfoguru.com/wp-content/uploads/2013/10/Vidyut-Jamwal-Body1-1280x720.jpg')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/abs');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Abs Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://www.news18.com/web-stories/entertainment/top-bollywood-stars-with-six-pack-abs/assets/20.jpeg')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(.0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/legs');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                            child: Text(
                              'Legs Workout ',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Lobster',
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Image.network(
                              'https://www.bodybuilding.com/images/2016/june/leg-workouts-for-men-7-best-workouts-for-quads-glutes-hams-header-v2-960x540.jpg')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Icon(
                      Icons.logout,
                      size: 60,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
