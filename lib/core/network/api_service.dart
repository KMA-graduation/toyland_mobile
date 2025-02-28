// lib/core/network/api_service.dart
import 'package:dio/dio.dart';
import 'package:get/get.dart' as Get;
import 'package:toyland_mobile/core/constants/config.dart';
import 'api_interceptor.dart';

class ApiService extends Get.GetxService {
  late Dio dio;

  Future<ApiService> init() async {
    dio = Dio(BaseOptions(
      baseUrl: MyConfig.BASE_URL,
      connectTimeout: const Duration(seconds: 30),
    ));
    dio.interceptors.add(ApiInterceptor());
    return this;
  }

  Future<Response> post(String path, {dynamic data}) => dio.post(path, data: data);
}