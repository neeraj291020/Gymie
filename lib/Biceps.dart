import 'package:flutter/material.dart';
import 'main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Biceps extends StatefulWidget {
  const Biceps({super.key});

  @override
  State<Biceps> createState() => _BicepsState();
}

class _BicepsState extends State<Biceps> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/vr0mNQR-KZw';
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
                  'You should never stay at the same level.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.cyan,
                    fontFamily: 'Caveat',
                  ),
                ),
              ),
              player,
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 15, 28, 0),
                child: Text(
                  '5 Under-The-Radar Biceps-Training Tips!',
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
                  '1. Get A Grip On The Perfect Biceps Workout',
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
                  '2. Bash The Brachialis',
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
                  '3. Shift Your Lifts',
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
                  '4. Ditch Your Doubts About Machines',
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
                  '5. Pair Up For Maximum Pump',
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
