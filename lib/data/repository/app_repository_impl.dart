import 'package:sample_application/data/data_source/remote/app_remote_data_source.dart';
import 'package:sample_application/domain/model/tours_model.dart';
import 'package:sample_application/domain/repository/app_repository.dart';

class AppRepositoryImpl extends AppRepository {
  final AppRemoteDataSource _appRemoteDataSource;

  AppRepositoryImpl({required AppRemoteDataSource appRemoteDataSource})
      : _appRemoteDataSource = appRemoteDataSource;

  @override
  Future<ToursCollectionModel> getTours() {
    return _appRemoteDataSource.getTours();
  }
}
