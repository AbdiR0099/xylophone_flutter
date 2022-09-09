import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  // style: ButtonStyle(
                  // fixedSize: MaterialStateProperty.all(Size(100, 100))),
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.setVolume(0.5);
                    player.play(AssetSource('note1.wav'));
                  },
                  child: const Text('Click Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
