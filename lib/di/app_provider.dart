import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sample_application/data/api_service/app_api_service.dart';
import 'package:sample_application/data/data_source/remote/app_remote_data_source.dart';
import 'package:sample_application/data/repository/app_repository_impl.dart';
import 'package:sample_application/domain/repository/app_repository.dart';
import 'package:sample_application/utils/network/dio_interceptor.dart';

final getIt = GetIt.instance;

class AppProvider {
  Future<void> init() async {
    getIt.registerSingleton<Dio>(
      Dio(
        BaseOptions(baseUrl: "http://10.0.2.2:3000"),
      ),
    );
    getIt<Dio>().interceptors.add(DioInterceptor());
    getIt.registerSingleton<AppApiService>(
      AppApiService(
        getIt<Dio>(),
      ),
    );
    getIt.registerSingleton<AppRemoteDataSource>(
      AppRemoteDataSource(
        appApiService: getIt<AppApiService>(),
      ),
    );
    getIt.registerSingleton<AppRepository>(
      AppRepositoryImpl(
        appRemoteDataSource: getIt<AppRemoteDataSource>(),
      ),
    );
  }
}
