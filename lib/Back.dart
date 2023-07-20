import 'package:flutter/material.dart';
import 'main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/MLENVBrIxSE';
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
                  'You have to think about it before you can do it.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.cyan,
                    fontFamily: 'Caveat',
                  ),
                ),
              ),
              player,
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 15, 28, 0),
                child: Text(
                  '5 Under-The-Radar Back-Training Tips!',
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
                  '1. Squeeze',
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
                  '2. Visualize',
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
                  '3.Use Straps',
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
                  '4. Go Light',
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
                  '5. Pre-Exhaust ',
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
