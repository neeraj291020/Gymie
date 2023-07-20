import 'package:flutter/material.dart';
import 'main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Legs extends StatefulWidget {
  const Legs({super.key});

  @override
  State<Legs> createState() => _LegsState();
}

class _LegsState extends State<Legs> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/QmlxfgMMa-g';
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
                  'All progress takes place outside the comfort zone.',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.cyan,
                    fontFamily: 'Caveat',
                  ),
                ),
              ),
              player,
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 15, 28, 0),
                child: Text(
                  '5 Under-The-Radar Legs-Training Tips!',
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
                  '1. No Amount Of Leg Pressing Will Replace Squats',
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
                  '2. Don\'t Squat On A Heel Board Or Plates',
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
                  '3.Change Your Foot Position To Adjust The Focus Of The Movement',
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
                  '4. Depth Of The Movement Is Critical To Building Your Legs And Butt ',
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
                  '5.A Good Lower Body Routine Needs Dedicated Hamstring Movements  ',
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
