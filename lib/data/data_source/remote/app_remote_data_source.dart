import 'package:sample_application/data/api_service/app_api_service.dart';
import 'package:sample_application/domain/model/tours_model.dart';

class AppRemoteDataSource {
  final AppApiService _appApiService;

  AppRemoteDataSource({required AppApiService appApiService})
      : _appApiService = appApiService;

  Future<ToursCollectionModel> getTours() async {
    final getToursResponse = await _appApiService.getTours();
    final toursCollection = getToursResponse.data;
    return ToursCollectionModel.from(toursCollection!);
  }
}
