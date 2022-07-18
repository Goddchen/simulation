import 'dart:math';

import 'package:flame/components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
import 'package:simulation/rules.dart';

part 'waveform_collapse_world.freezed.dart';

class WaveformCollapseWorld extends RectangleComponent {
  final Paint _landPaint = Paint()..color = Colors.brown;
  final Paint _rockPaint = Paint()..color = Colors.grey;
  late List<List<WaveformCollapseWorldTile>> _tiles;
  final double _tileWidth = 16;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    size = Vector2(1024, 512);
    debugMode = true;
    anchor = Anchor.topLeft;
    _tiles = _generateWorld();
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    for (int x = 0; x * _tileWidth < size.toRect().width; x++) {
      for (int y = 0; y * _tileWidth < size.toRect().height; y++) {
        WaveformCollapseWorldTile tile = _tiles[x][y];
        canvas.drawRect(
          Rect.fromLTWH(x * _tileWidth, y * _tileWidth, _tileWidth, _tileWidth),
          tile.map(
            land: (_) => _landPaint,
            rock: (_) => _rockPaint,
          ),
        );
      }
    }
  }

  List<List<WaveformCollapseWorldTile>> _generateWorld() {
    //init waveforms for all tiles
    //collapse one random tile
    //keep collapsing adjacent tiles
    //stop when all tiles are fully collapsed
    List<List<Set<WaveformCollapseWorldTile>>> tileWaveForms =
        List<List<Set<WaveformCollapseWorldTile>>>.empty(growable: true);
    for (int x = 0; x * _tileWidth < size.toRect().width; x++) {
      tileWaveForms
          .add(List<Set<WaveformCollapseWorldTile>>.empty(growable: true));
      for (int y = 0; y * _tileWidth < size.toRect().height; y++) {
        tileWaveForms[x].insert(y, <WaveformCollapseWorldTile>{
          const WaveformCollapseWorldTile.land(),
          const WaveformCollapseWorldTile.rock(),
        });
      }
    }

    Random random = Random();
    tileWaveForms[random.nextInt(size.toRect().width ~/ _tileWidth)]
            [random.nextInt(size.toRect().height ~/ _tileWidth)] =
        <WaveformCollapseWorldTile>{const WaveformCollapseWorldTile.land()};

    while (tileWaveForms.any(
      (List<Set<WaveformCollapseWorldTile>> row) => row.any(
        (Set<WaveformCollapseWorldTile> tileWaveForms) =>
            tileWaveForms.length > 1,
      ),
    )) {
      int leastEntropy = tileWaveForms
          .map(
            (List<Set<WaveformCollapseWorldTile>> row) => row
                .map(
                  (Set<WaveformCollapseWorldTile> tileWaveForms) =>
                      tileWaveForms.length,
                )
                .min,
          )
          .min;
      List<Offset> tilesWithLeastEntropy = List<Offset>.empty(growable: true);
      tileWaveForms
          .forEachIndexed((int x, List<Set<WaveformCollapseWorldTile>> row) {
        row.forEachIndexed(
            (int y, Set<WaveformCollapseWorldTile> tileWaveForms) {
          if (tileWaveForms.length == leastEntropy) {
            tilesWithLeastEntropy.add(Offset(x.toDouble(), y.toDouble()));
          }
        });
      });
      Offset randomTileOffsetWithLeastEntory =
          tilesWithLeastEntropy[random.nextInt(tilesWithLeastEntropy.length)];
      // collapse adjacent tiles
      void collapseTile({required Offset offset}) {
        Set<WaveformCollapseWorldTile> randomTileWithLeastEntoryWaveForms =
            tileWaveForms[offset.dx.toInt()][offset.dy.toInt()];
        tileWaveForms[offset.dx.toInt()]
            [offset.dy.toInt()] = <WaveformCollapseWorldTile>{
          randomTileWithLeastEntoryWaveForms.elementAt(
            random.nextInt(randomTileWithLeastEntoryWaveForms.length),
          )
        };
        //update adjacent tiles
        
      }

      collapseTile(
        offset: Offset(
          randomTileOffsetWithLeastEntory.dx - 1,
          randomTileOffsetWithLeastEntory.dy - 1,
        ),
      );
    }

    return tileWaveForms
        .map(
          (List<Set<WaveformCollapseWorldTile>> row) => row
              .map(
                (Set<WaveformCollapseWorldTile> tileWaveforms) =>
                    tileWaveforms.first,
              )
              .toList(),
        )
        .toList();
  }
}

@freezed
class WaveformCollapseWorldTile with _$WaveformCollapseWorldTile {
  const factory WaveformCollapseWorldTile.land() = Land;
  const factory WaveformCollapseWorldTile.rock() = Rock;
}
