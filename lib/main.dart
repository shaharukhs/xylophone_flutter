import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded addXylophoneButton({int soundNumber, Color buttonColor}) {
    //soundNumber where button has to place from 1 to 7 position according to it's sound
    //buttonColor where which color to set for that specific button
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: buttonColor,
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
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Add 7 Xylophone buttons with soundNumber -> int and buttonColor -> Color for button
              addXylophoneButton(soundNumber: 1, buttonColor: Colors.red),
              addXylophoneButton(soundNumber: 2, buttonColor: Colors.orange),
              addXylophoneButton(soundNumber: 3, buttonColor: Colors.yellow),
              addXylophoneButton(soundNumber: 4, buttonColor: Colors.green),
              addXylophoneButton(soundNumber: 5, buttonColor: Colors.blue),
              addXylophoneButton(soundNumber: 6, buttonColor: Colors.indigo),
              addXylophoneButton(soundNumber: 7, buttonColor: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
