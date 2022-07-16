import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:simulation/game.dart';

Widget buildApp() => GameWidget<SimulationGame>(game: SimulationGame());

void main() {
  runApp(buildApp());
}
