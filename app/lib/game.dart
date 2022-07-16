import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:simulation/lifeform.dart';
import 'package:simulation/waveform_collapse_world.dart';

class SimulationGame extends FlameGame with HasKeyboardHandlerComponents {
  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    await add(WaveformCollapseWorld());
    await add(LifeForm());
  }
}
