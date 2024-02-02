import 'package:dio/dio.dart';
import 'package:sample_application/utils/common/common_errors.dart';

class DioInterceptor extends Interceptor {

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    switch (response.statusCode) {
      case 200:
        print(response);
        return super.onResponse(response, handler);
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }

  }
}