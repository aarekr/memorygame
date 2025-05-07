import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Memory Game", style: TextStyle(fontSize: 30)),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              child: Text("Start", style: TextStyle(fontSize: 24),),
              onPressed: () => Get.to(() => GameScreen()),
            ),
          ]
        )
      )
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: FlameGame(),
    );
  }
}
