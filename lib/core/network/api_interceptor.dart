// lib/core/network/api_interceptor.dart
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = Get.find<SharedPreferences>();
    final token = prefs.getString('auth_token');
    if (token != null) options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }
}