

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_example/models/api_response_model.dart';

class ApiUtils{

  static final ApiUtils instance = ApiUtils.internal();
  static const String baseUrl = "https://kitsu.io/api/";

  late Dio dio;
  ApiUtils.internal(){
    dio = Dio();
    dio.options = BaseOptions(
      baseUrl: baseUrl,
    );
  }

  Future<ApiResponse> getData(String path) async{
    Response response = await dio.get(path);
    if(response.statusCode==200){
      return ApiResponse(true,data: jsonDecode(response.data));
    }else{
      return ApiResponse(false,message: response.statusMessage);
    }
  }

}