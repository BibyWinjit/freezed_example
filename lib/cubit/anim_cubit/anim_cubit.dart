import 'package:bloc/bloc.dart';
import 'package:freezed_example/cubit/anim_cubit/anim_repository.dart';
import 'package:freezed_example/models/anim_model.dart';
import 'package:freezed_example/models/api_response_model.dart';
import 'anim_state.dart';


class AnimCubit extends Cubit<AnimState> {

  AnimRepository animRepository;
  AnimCubit(this.animRepository) : super(const Initial());

   fetchAnims() async {
    emit(const Loading());
    ApiResponse apiResponse = await animRepository.fetchAnims();
    if(apiResponse.status){
      List<AnimModel> animModels = apiResponse.data['data'].map<AnimModel>((e)=>AnimModel.fromJson(e)).toList();
      emit(Loaded(animModels));
    }
    else{
      emit(const Error());
    }
  }

}
