import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_application/domain/repository/app_repository.dart';
import 'package:sample_application/presentation/cubit/tours_collection_state.dart';
import 'package:sample_application/utils/common/common_errors.dart';

class ToursCollectionPageCubit extends Cubit<ToursCollectionPageState> {
  final AppRepository _appRepository;

  ToursCollectionPageCubit({required AppRepository appRepository})
      : _appRepository = appRepository,
        super(ToursCollectionsPageInitState());

  Future<void> getTours() async {
    emit(ToursCollectionPageLoadingState());
    try {
      final getToursResponse = await _appRepository.getTours();
      emit(ToursCollectionPageSuccessState());
    } on AppException catch (e) {
      emit(ToursCollectionPageErrorState(message: e.message));
    }
  }
}
