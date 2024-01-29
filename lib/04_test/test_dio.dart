
import 'package:dio/dio.dart';

void main() async{
  var dio = Dio(); //相当于httpClient
  Response mResponse = await dio.get("https://www.wanandroid.com/banner/json");
  print(mResponse.data);
  // 1：29：53 播放到了43分钟  58分钟

}

