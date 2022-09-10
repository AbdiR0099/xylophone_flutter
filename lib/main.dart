import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color = Colors.red, int soundNumber = 0}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: [
              buildKey(color: Colors.amber, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 2),
              buildKey(color: Colors.blueAccent, soundNumber: 3),
              buildKey(color: Colors.orange, soundNumber: 4),
              buildKey(color: Colors.red, soundNumber: 5),
              buildKey(color: Colors.cyan, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

// void main(){
//   int step1 = add(n1: 5, n2: 9);
//   int step2 = multiply (step1,5);
//   double result = step2 / 3;
//   print('$result');
// }
//
// int add({int n1=1, int n2=1}){
//   int addition = n1 + n2;
//   return addition;
// }
//
// int multiply(int a, int b){
//   return a*b;
// }
