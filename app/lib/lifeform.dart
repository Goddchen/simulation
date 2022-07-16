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
    double offset = 8;
    Vector2 diff = Vector2(0, 0);
    if (keysPressed.contains(LogicalKeyboardKey.arrowDown)) {
      if ((Vector2.copy(position)..add(Vector2(0, offset))).y <=
          512 - size.toRect().height) {
        diff.add(Vector2(0, offset));
      }
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowUp)) {
      if ((Vector2.copy(position)..add(Vector2(0, -offset))).y >= 0) {
        diff.add(Vector2(0, -offset));
      }
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
      if ((Vector2.copy(position)..add(Vector2(-offset, 0))).x >= 0) {
        diff.add(Vector2(-offset, 0));
      }
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
      if ((Vector2.copy(position)..add(Vector2(offset, 0))).x <=
          1024 - size.toRect().width) {
        diff.add(Vector2(offset, 0));
      }
    }
    position.add(diff);
    return diff.length > 0;
  }
}
