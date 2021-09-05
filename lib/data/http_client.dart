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
      print('\n\n This is the data: ${options.data}');
      print('\n\n This is the request: ${options.uri}');
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      print('This is the response: $response');
      return handler.next(response);
    }, onError: (DioError error, handler) {
      if (error.type == DioErrorType.response) {
        print('=====================> Response error from the backend ${error.error}');
        throw Exception('This is from the backend');
      } else if (error.type == DioErrorType.connectTimeout) {
        print('===========> There was connection time out');
        throw Exception('Connection time out');

      } else if(error.type == DioErrorType.other && error.message.contains('SocketException')){
        print(' Others ====================> Please enable internet on your device and try again');
      }
      print('Error caught: $error');
      return handler.next(error);
    }));

    return dio;
  }
}
