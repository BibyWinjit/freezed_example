

import 'package:freezed_example/models/api_response_model.dart';
import 'package:freezed_example/utils/api_utils.dart';




class AnimRepository{

  Future<ApiResponse> fetchAnims() async {
    String route = "edge/anime";
    ApiResponse apiResponse = await ApiUtils.instance.getData(route);
    return apiResponse;
  }
}