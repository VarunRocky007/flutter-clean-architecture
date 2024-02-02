import 'package:sample_application/domain/model/tours_model.dart';

abstract class AppRepository {
  Future<ToursCollectionModel> getTours();
}
