import 'package:simulation/waveform_collapse_world.dart';

final List<Map<List<WaveformCollapseWorldTile>, double>> rules =
    <Map<List<WaveformCollapseWorldTile>, double>>[
  //Top left, land tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
  },
  // Top left, rock tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
  },
  // Top right, land tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
  },
  // Top right, rock tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
  },
  // Bottom left, land tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
  },
  // Bottom left, rock tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
  },
  // Bottom right, land tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
  },
  // Bottom right, rock tile
  <List<WaveformCollapseWorldTile>, double>{
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
    <WaveformCollapseWorldTile>[
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.land(),
      const WaveformCollapseWorldTile.rock(),
      const WaveformCollapseWorldTile.rock(),
    ]: 1 / 8,
  },
];
