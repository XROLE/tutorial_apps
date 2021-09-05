

// import 'package:dio/dio.dart';

// class NetworkErrorHandler {
//   static String handleError(DioError error) {
//     String errorDescription = "";
//     switch (error.type) {
//       case DioErrorType.cancel:
//         errorDescription = "Request to server was cancelled, please try again";
//         break;
//       case DioErrorType.connectTimeout:
//         errorDescription = "Connection timeout with server, please try again";
//         break;
//       case DioErrorType.sendTimeout:
//         errorDescription = "Connection timeout with server, please try again";
//         break;
//       case DioErrorType.DEFAULT:
//         errorDescription =
//         "Connection to API server failed due to internet connection Check your internet connection and try again";
//         break;
//       case DioErrorType.receiveTimeout:
//         errorDescription = "Receive timeout in connection with API server";
//         break;
//       default:
//         errorDescription = "Unexpected error encountered, please try again";
//     }
//     return errorDescription;
//   }
// }