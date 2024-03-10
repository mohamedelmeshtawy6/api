import 'package:api/api/api_consumer.dart';
import 'package:api/api/api_interceptor.dart';
import 'package:api/api/endpoint.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiComsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = Endoints.baseurl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
        request: true,
        error: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
  }
  @override
  delete(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormat = false}) async {
    Response response = await dio.delete(path,
        data: isFormat ? FormData.fromMap(data) : data,
        queryParameters: queryParameter);
    return response.data;
  }

  @override
  get(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormat = false}) async {
    Response response = await dio.get(path,
        data: isFormat ? FormData.fromMap(data) : data,
        queryParameters: queryParameter);
    return response.data;
  }
 
  @override
  patch(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormat = false}) async {
    Response response = await dio.delete(path,
        data: isFormat ? FormData.fromMap(data) : data,
        queryParameters: queryParameter);
    return response.data;
  }

  @override
  post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameter,
      bool isFormat = false}) async {
    Response response = await dio.delete(path,
        data: isFormat ? FormData.fromMap(data) : data,
        queryParameters: queryParameter);
    return response.data;
  }
}
//