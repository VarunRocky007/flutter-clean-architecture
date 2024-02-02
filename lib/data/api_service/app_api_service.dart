import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sample_application/data/entity/common_response_entity.dart';
import 'package:sample_application/data/entity/tours_entity.dart';

part 'app_api_service.g.dart';

@RestApi()
abstract class AppApiService {
  factory AppApiService(Dio dio) = _AppApiService;
  
  @GET('/api/v1/tours')
  Future<CommonResponseEntity<ToursCollectionEntity>> getTours();
}