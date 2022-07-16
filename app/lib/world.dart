import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class World extends RectangleComponent {
  final Paint _evenPaint = Paint()..color = Colors.green;
  final Paint _oddPaint = Paint()..color = Colors.black;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    paint = Paint()..color = Colors.green;
    size = Vector2(1024, 512);
    debugMode = true;
    anchor = Anchor.topLeft;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    for (double x = 0; x < size.toRect().width; x += 16) {
      for (double y = 0; y < size.toRect().height; y += 16) {
        canvas.drawRect(
          Rect.fromLTWH(x, y, 16, 16),
          (x + y) / 16 % 2 == 0 ? _evenPaint : _oddPaint,
        );
      }
    }
  }
}
