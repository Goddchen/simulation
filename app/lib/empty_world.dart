import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class EmptyWorld extends RectangleComponent {
  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    anchor = Anchor.topLeft;
    paint = Paint()..color = Colors.black;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(const Rect.fromLTWH(0, 0, 1024, 512), paint);
  }
}
