import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(221, 29, 28, 28),
          appBar: AppBar(
            title: const Center(
              child: Text('Audio Player')
              ,
            ),backgroundColor: Colors.pinkAccent[400],
          ),
          body: const Player()),
    ),
  );
}

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Playbutton(1);
                  },
                  child: Image.asset('images/img1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Playbutton(2);
                  },
                  child: Image.asset('images/img2.png'),
                ),
              ),
            ],
          ),
          
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Playbutton(4);
                  },
                  child: Image.asset('images/img4.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Playbutton(5);
                  },
                  child: Image.asset('images/img5.png'),
                ),
              ),
            ],
          ),
          
    Row(
      children: [
        Expanded(
                child: TextButton(
                  onPressed: () {
                    Playbutton(3);
                  },
                  child: Image.asset('images/img3.png',height: 200,),
                ),
              ),
      ],
    )
          
      ],),
    );
  }

  void Playbutton(int num) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$num.mp3"),
    );
  }
}
