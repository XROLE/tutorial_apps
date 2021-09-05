import 'package:dio/dio.dart';

class HttpClient {
  HttpClient();

  static Dio getClient() {
    Dio dio = new Dio();
    dio.options.connectTimeout = 6000;
    dio.options.receiveTimeout = 6000;
    // dio.options.contentType = 'application/json';

    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
      print('This is the queryParameter: ${options.queryParameters}');
      print('This is the data: ${options.data}');
      print('This is the request: ${options.uri}');
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      return handler.next(response);
    }, onError: (DioError error, handler) {
      print('Error caught: $error');
      return handler.next(error);
    }));

    return dio;
  }
}
