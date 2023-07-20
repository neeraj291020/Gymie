import 'package:flutter/material.dart';
import 'main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Triceps extends StatefulWidget {
  const Triceps({super.key});

  @override
  State<Triceps> createState() => _TricepsState();
}

class _TricepsState extends State<Triceps> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/XG9IOHvLBGw';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void despose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
          body: ListView(
            children: [
              AppBar(
                backgroundColor: Colors.black,
                title: Text(
                  'The only bad workout is the one that didn\'t happen.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.cyan,
                    fontFamily: 'Caveat',
                  ),
                ),
              ),
              player,
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 15, 28, 0),
                child: Text(
                  '5 Under-The-Radar Triceps-Training Tips!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lobster',
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 13, 18, 0),
                child: Text(
                  '1. Warm Up Properly',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 13, 18, 0),
                child: Text(
                  '2. Target Different Areas',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 13, 18, 0),
                child: Text(
                  '3. Always Use Proper Form',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.purple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 13, 18, 0),
                child: Text(
                  '4. Focus On The Contraction',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 13, 18, 0),
                child: Text(
                  '5. Build With Pyramids',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.brown,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
