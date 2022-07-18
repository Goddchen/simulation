// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'waveform_collapse_world.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WaveformCollapseWorldTile {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() land,
    required TResult Function() rock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? land,
    TResult Function()? rock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? land,
    TResult Function()? rock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Land value) land,
    required TResult Function(Rock value) rock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Land value)? land,
    TResult Function(Rock value)? rock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Land value)? land,
    TResult Function(Rock value)? rock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaveformCollapseWorldTileCopyWith<$Res> {
  factory $WaveformCollapseWorldTileCopyWith(WaveformCollapseWorldTile value,
          $Res Function(WaveformCollapseWorldTile) then) =
      _$WaveformCollapseWorldTileCopyWithImpl<$Res>;
}

/// @nodoc
class _$WaveformCollapseWorldTileCopyWithImpl<$Res>
    implements $WaveformCollapseWorldTileCopyWith<$Res> {
  _$WaveformCollapseWorldTileCopyWithImpl(this._value, this._then);

  final WaveformCollapseWorldTile _value;
  // ignore: unused_field
  final $Res Function(WaveformCollapseWorldTile) _then;
}

/// @nodoc
abstract class _$$LandCopyWith<$Res> {
  factory _$$LandCopyWith(_$Land value, $Res Function(_$Land) then) =
      __$$LandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LandCopyWithImpl<$Res>
    extends _$WaveformCollapseWorldTileCopyWithImpl<$Res>
    implements _$$LandCopyWith<$Res> {
  __$$LandCopyWithImpl(_$Land _value, $Res Function(_$Land) _then)
      : super(_value, (v) => _then(v as _$Land));

  @override
  _$Land get _value => super._value as _$Land;
}

/// @nodoc

class _$Land with DiagnosticableTreeMixin implements Land {
  const _$Land();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaveformCollapseWorldTile.land()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'WaveformCollapseWorldTile.land'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Land);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() land,
    required TResult Function() rock,
  }) {
    return land();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? land,
    TResult Function()? rock,
  }) {
    return land?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? land,
    TResult Function()? rock,
    required TResult orElse(),
  }) {
    if (land != null) {
      return land();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Land value) land,
    required TResult Function(Rock value) rock,
  }) {
    return land(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Land value)? land,
    TResult Function(Rock value)? rock,
  }) {
    return land?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Land value)? land,
    TResult Function(Rock value)? rock,
    required TResult orElse(),
  }) {
    if (land != null) {
      return land(this);
    }
    return orElse();
  }
}

abstract class Land implements WaveformCollapseWorldTile {
  const factory Land() = _$Land;
}

/// @nodoc
abstract class _$$RockCopyWith<$Res> {
  factory _$$RockCopyWith(_$Rock value, $Res Function(_$Rock) then) =
      __$$RockCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RockCopyWithImpl<$Res>
    extends _$WaveformCollapseWorldTileCopyWithImpl<$Res>
    implements _$$RockCopyWith<$Res> {
  __$$RockCopyWithImpl(_$Rock _value, $Res Function(_$Rock) _then)
      : super(_value, (v) => _then(v as _$Rock));

  @override
  _$Rock get _value => super._value as _$Rock;
}

/// @nodoc

class _$Rock with DiagnosticableTreeMixin implements Rock {
  const _$Rock();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaveformCollapseWorldTile.rock()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'WaveformCollapseWorldTile.rock'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Rock);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() land,
    required TResult Function() rock,
  }) {
    return rock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? land,
    TResult Function()? rock,
  }) {
    return rock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? land,
    TResult Function()? rock,
    required TResult orElse(),
  }) {
    if (rock != null) {
      return rock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Land value) land,
    required TResult Function(Rock value) rock,
  }) {
    return rock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Land value)? land,
    TResult Function(Rock value)? rock,
  }) {
    return rock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Land value)? land,
    TResult Function(Rock value)? rock,
    required TResult orElse(),
  }) {
    if (rock != null) {
      return rock(this);
    }
    return orElse();
  }
}

abstract class Rock implements WaveformCollapseWorldTile {
  const factory Rock() = _$Rock;
}
