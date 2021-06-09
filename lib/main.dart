import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(String sound) {
    player.play(sound);
  }

  Expanded buildKey(Color col, String sound, String text) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(sound);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 'note1.wav', '1'),
              buildKey(Colors.orange, 'note2.wav', '2'),
              buildKey(Colors.yellow, 'note3.wav', '3'),
              buildKey(Colors.lightGreen, 'note4.wav', '4'),
              buildKey(Colors.green, 'note5.wav', '5'),
              buildKey(Colors.blue, 'note6.wav', '6'),
              buildKey(Colors.purple, 'note7.wav', '7'),
            ],
          ),
        ),
      ),
    );
  }
}
