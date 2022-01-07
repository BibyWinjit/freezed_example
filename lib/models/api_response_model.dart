


class ApiResponse{
  bool status = false;
  String? message;
  dynamic data;
  dynamic meta;
  dynamic link;

  ApiResponse(this.status,{this.data,this.message,this.link,this.meta});

  factory ApiResponse.fromJSON(dynamic json){
    if(json == null){
      return ApiResponse(false);
    }
    return ApiResponse(json['status']??false,data: json['data']);
  }
}