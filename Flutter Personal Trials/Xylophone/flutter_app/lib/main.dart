import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    Expanded _flatButton(Color color, int soundNum, String text) {
      return Expanded(
          child: FlatButton(
        onPressed: () {
          player.play("note$soundNum.wav");
        },
        color: color,
        child: Text(
          text,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ));
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _flatButton(Colors.red, 1, "Do"),
            _flatButton(Colors.orange, 2, "Re"),
            _flatButton(Colors.yellow, 3, "Mi"),
            _flatButton(Colors.green, 4, "Fa"),
            _flatButton(Colors.indigo, 5, "So"),
            _flatButton(Colors.purple, 6, "La"),
          ],
        ),
      ),
    );
  }
}
