import 'package:equatable/equatable.dart';

class ToursCollectionPageState extends Equatable {
  const ToursCollectionPageState();

  @override
  List<Object?> get props => [];
}

class ToursCollectionsPageInitState extends ToursCollectionPageState {}

class ToursCollectionPageSuccessState extends ToursCollectionPageState {}

class ToursCollectionPageErrorState extends ToursCollectionPageState {
  final String? message;

  const ToursCollectionPageErrorState({this.message});
}

class ToursCollectionPageLoadingState extends ToursCollectionPageState {}
