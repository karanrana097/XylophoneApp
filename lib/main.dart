import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playSound(int n){
    final player = AudioPlayer();
    player.play(AssetSource('note$n.wav'));
  }
  Expanded buildKey({required Color color, required int num}) {
    return  Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            playSound(num);
          }, child: const Text(''),
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
            children: [
              buildKey(color: Colors.red, num: 1),
              buildKey(color: Colors.orange, num: 2),
              buildKey(color: Colors.yellow, num: 3),
              buildKey(color: Colors.green, num: 4),
              buildKey(color: Colors.teal, num: 5),
              buildKey(color: Colors.indigo, num: 6),
              buildKey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
