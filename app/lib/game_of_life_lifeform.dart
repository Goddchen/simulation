import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class GameOfLifeLifeform extends PositionComponent {
  final Paint _alivePaint = Paint()..color = Colors.green;
  final Paint _deadPaint = Paint()..color = Colors.red;
  bool isAlive = false;

  @override
  render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), isAlive ? _alivePaint : _deadPaint);
  }
}
