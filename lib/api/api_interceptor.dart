import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor{

@override
void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    
    options.headers['langue']='en';
    super.onRequest(options, handler);
  }




}