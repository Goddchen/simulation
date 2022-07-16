import 'package:flame/game.dart';
import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simulation/game.dart';

void main() {
  FlameTester<SimulationGame> flameTester =
      FlameTester<SimulationGame>(() => SimulationGame());

  flameTester.testGameWidget(
    'Smoke test',
    verify: (FlameGame game, WidgetTester widgetTester) async {
      expect(find.byGame<SimulationGame>(), findsOneWidget);
    },
  );
}
