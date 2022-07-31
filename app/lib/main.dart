import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:simulation/game_of_life_game.dart';

Widget buildApp() => GameWidget<GameOfLifeGame>(game: GameOfLifeGame());

void main() {
  runApp(buildApp());
}
