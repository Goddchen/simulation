import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:simulation/lifeform.dart';
import 'package:simulation/world.dart';

class SimulationGame extends FlameGame with HasKeyboardHandlerComponents {
  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    await add(World());
    await add(LifeForm());
  }
}
