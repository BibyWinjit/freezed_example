import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_example/models/anim_model.dart';

part 'anim_state.freezed.dart';

@freezed
class AnimState  with _$AnimState{
  const factory AnimState.initial() = Initial;
  const factory AnimState.loading() = Loading;
  const factory AnimState.loaded(List<AnimModel> animModels) = Loaded;
  const factory AnimState.error() = Error;
}