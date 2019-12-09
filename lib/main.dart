import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound({int soundNumber}){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int keyNumber){
    return Expanded(
      child: FlatButton(
        color: getKeyColor(keyNumber),
        onPressed: () {
          playSound(soundNumber: keyNumber);
        },
      ),
    );
  }

  MaterialColor getKeyColor(int keyNumber){
    MaterialColor color;
    switch(keyNumber){
      case 1: color = Colors.red; break;
      case 2: color =  Colors.orange;break;
      case 3: color = Colors.yellow;break;
      case 4: color = Colors.green;break;
      case 5: color = Colors.teal;break;
      case 6: color = Colors.blue;break;
      case 7: color = Colors.purple;break;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
            ],
          ),
        ),
      ),
    );
  }
}
