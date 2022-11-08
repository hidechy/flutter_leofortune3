import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/uranai.dart';

part 'uranai_all_state.freezed.dart';

@freezed
class UranaiAllState with _$UranaiAllState {
  const factory UranaiAllState({
    required List<Uranai> record,
  }) = _UranaiAllState;
}
