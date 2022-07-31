import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flame/game.dart';
import 'package:simulation/empty_world.dart';
import 'package:simulation/game_of_life_lifeform.dart';

class GameOfLifeGame extends FlameGame {
  final double _worldWidth = 256;
  final double _worldHeight = 256;
  final Vector2 _lifeformSize = Vector2(8, 8);
  double _lastHandledTime = 0;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    camera.viewport =
        FixedResolutionViewport(Vector2(_worldWidth, _worldHeight));
    await add(EmptyWorld()..size = Vector2(_worldWidth, _worldHeight));
    Random random = Random();
    for (double row = 0; row < _worldHeight / _lifeformSize.y; row++) {
      for (double column = 0;
          column < _worldWidth / _lifeformSize.x;
          column++) {
        GameOfLifeLifeform gameOfLifeLifeform = GameOfLifeLifeform()
          ..position = Vector2(column * _lifeformSize.x, row * _lifeformSize.y)
          ..size = _lifeformSize;
        await add(gameOfLifeLifeform);
        gameOfLifeLifeform.isAlive = random.nextBool();
      }
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (currentTime().toInt() > _lastHandledTime) {
      _lastHandledTime = currentTime();
      children
          .whereType<GameOfLifeLifeform>()
          .forEach((GameOfLifeLifeform lifeform) {
        int neighbourCount = _getNeighbourCount(lifeform: lifeform);
        if (lifeform.isAlive) {
          // If the cell is alive, then it stays alive if it has either 2 or 3 live neighbors
          if (neighbourCount != 2 && neighbourCount != 3) {
            lifeform.isAlive = false;
          }
        } else {
          // If the cell is dead, then it springs to life only in the case that it has 3 live neighbors
          if (neighbourCount == 3) {
            lifeform.isAlive = true;
          }
        }
      });
    }
  }

  int _getNeighbourCount({required GameOfLifeLifeform lifeform}) {
    GameOfLifeLifeform? leftNeighbour =
        componentsAtPoint(Vector2.copy(lifeform.position)..add(Vector2(-1, 0)))
            .whereType<GameOfLifeLifeform>()
            .firstOrNull;
    GameOfLifeLifeform? topNeighbour =
        componentsAtPoint(Vector2.copy(lifeform.position)..add(Vector2(0, -1)))
            .whereType<GameOfLifeLifeform>()
            .firstOrNull;
    GameOfLifeLifeform? rightNeighbour = componentsAtPoint(
      Vector2.copy(lifeform.position)..add(Vector2(_lifeformSize.x, 0)),
    ).whereType<GameOfLifeLifeform>().firstOrNull;
    GameOfLifeLifeform? bottomNeighbour = componentsAtPoint(
      Vector2.copy(lifeform.position)..add(Vector2(0, _lifeformSize.y)),
    ).whereType<GameOfLifeLifeform>().firstOrNull;
    GameOfLifeLifeform? topLeftNeighbour =
        componentsAtPoint(Vector2.copy(lifeform.position)..add(Vector2(-1, -1)))
            .whereType<GameOfLifeLifeform>()
            .firstOrNull;
    GameOfLifeLifeform? topRightNeighbour = componentsAtPoint(
      Vector2.copy(lifeform.position)..add(Vector2(-1, _lifeformSize.x)),
    ).whereType<GameOfLifeLifeform>().firstOrNull;
    GameOfLifeLifeform? bottomRightNeighbour = componentsAtPoint(
      Vector2.copy(lifeform.position)
        ..add(Vector2(_lifeformSize.x, _lifeformSize.y)),
    ).whereType<GameOfLifeLifeform>().firstOrNull;
    GameOfLifeLifeform? bottomLeftNeighbour = componentsAtPoint(
      Vector2.copy(lifeform.position)..add(Vector2(-1, _lifeformSize.y)),
    ).whereType<GameOfLifeLifeform>().firstOrNull;
    return ((leftNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((topNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((rightNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((bottomNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((topLeftNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((topRightNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((bottomRightNeighbour?.isAlive ?? false) ? 1 : 0) +
        ((bottomLeftNeighbour?.isAlive ?? false) ? 1 : 0);
  }
}
