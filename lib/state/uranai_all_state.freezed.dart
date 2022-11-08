// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'uranai_all_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UranaiAllState {
  List<Uranai> get record => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UranaiAllStateCopyWith<UranaiAllState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UranaiAllStateCopyWith<$Res> {
  factory $UranaiAllStateCopyWith(
          UranaiAllState value, $Res Function(UranaiAllState) then) =
      _$UranaiAllStateCopyWithImpl<$Res, UranaiAllState>;
  @useResult
  $Res call({List<Uranai> record});
}

/// @nodoc
class _$UranaiAllStateCopyWithImpl<$Res, $Val extends UranaiAllState>
    implements $UranaiAllStateCopyWith<$Res> {
  _$UranaiAllStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_value.copyWith(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as List<Uranai>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UranaiAllStateCopyWith<$Res>
    implements $UranaiAllStateCopyWith<$Res> {
  factory _$$_UranaiAllStateCopyWith(
          _$_UranaiAllState value, $Res Function(_$_UranaiAllState) then) =
      __$$_UranaiAllStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Uranai> record});
}

/// @nodoc
class __$$_UranaiAllStateCopyWithImpl<$Res>
    extends _$UranaiAllStateCopyWithImpl<$Res, _$_UranaiAllState>
    implements _$$_UranaiAllStateCopyWith<$Res> {
  __$$_UranaiAllStateCopyWithImpl(
      _$_UranaiAllState _value, $Res Function(_$_UranaiAllState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_$_UranaiAllState(
      record: null == record
          ? _value._record
          : record // ignore: cast_nullable_to_non_nullable
              as List<Uranai>,
    ));
  }
}

/// @nodoc

class _$_UranaiAllState implements _UranaiAllState {
  const _$_UranaiAllState({required final List<Uranai> record})
      : _record = record;

  final List<Uranai> _record;
  @override
  List<Uranai> get record {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_record);
  }

  @override
  String toString() {
    return 'UranaiAllState(record: $record)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UranaiAllState &&
            const DeepCollectionEquality().equals(other._record, _record));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_record));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UranaiAllStateCopyWith<_$_UranaiAllState> get copyWith =>
      __$$_UranaiAllStateCopyWithImpl<_$_UranaiAllState>(this, _$identity);
}

abstract class _UranaiAllState implements UranaiAllState {
  const factory _UranaiAllState({required final List<Uranai> record}) =
      _$_UranaiAllState;

  @override
  List<Uranai> get record;
  @override
  @JsonKey(ignore: true)
  _$$_UranaiAllStateCopyWith<_$_UranaiAllState> get copyWith =>
      throw _privateConstructorUsedError;
}
