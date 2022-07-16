import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:simulation/game.dart';

void main() {
  runApp(GameWidget<SimulationGame>(game: SimulationGame()));
}
