import 'package:flutter/material.dart';
import 'main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Chest extends StatefulWidget {
  const Chest({super.key});

  @override
  State<Chest> createState() => _ChestState();
}

class _ChestState extends State<Chest> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/AqhaE72P-i4';
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
                  'Don\'t be afraid of failure.',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.cyan,
                    fontFamily: 'Caveat',
                  ),
                ),
              ),
              player,
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 15, 28, 0),
                child: Text(
                  '5 Under-The-Radar Chest-Training Tips!',
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
                  '1. Retract Your Shoulders, Open Your Chest',
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
                  '2. Use Multiple Bench Angles',
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
                  '3. Focus On Your Liftoff And Lockout',
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
                  '4. Follow a Dedicated Bench Program.',
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
                  '5. Goose Your Triceps Training',
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
