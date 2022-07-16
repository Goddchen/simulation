import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LifeForm extends PositionComponent with KeyboardHandler {
  final Paint _paint = Paint()..color = Colors.red;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    size = Vector2(32, 32);
  }

  @override
  render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), _paint);
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    super.onKeyEvent(event, keysPressed);
    Vector2 diff = Vector2(0, 0);
    if (keysPressed.contains(LogicalKeyboardKey.arrowDown)) {
      diff.add(Vector2(0, 1));
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowUp)) {
      diff.add(Vector2(0, -1));
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
      diff.add(Vector2(-1, 0));
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
      diff.add(Vector2(1, 0));
    }
    position.add(diff);
    return diff.length > 0;
  }
}
