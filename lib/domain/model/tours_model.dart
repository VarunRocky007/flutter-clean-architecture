import 'package:sample_application/data/entity/tours_entity.dart';

class ToursCollectionModel {
  List<ToursModel>? tours;

  ToursCollectionModel({this.tours});

  ToursCollectionModel.from(ToursCollectionEntity toursCollectionEntity) {
    ToursCollectionModel(
        tours: toursCollectionEntity.tours
            ?.map((e) => ToursModel.from(e))
            .toList());
  }
}

class ToursModel {
  int? id;
  String? name;
  int? duration;
  int? maxGroupSize;
  String? difficulty;
  double? ratingsAverage;
  int? ratingsQuantity;
  int? price;
  String? summary;
  String? description;
  String? imageCover;
  List<String>? images;
  List<String>? startDates;

  ToursModel(
      this.id,
      this.name,
      this.duration,
      this.maxGroupSize,
      this.difficulty,
      this.ratingsAverage,
      this.ratingsQuantity,
      this.price,
      this.summary,
      this.description,
      this.imageCover,
      this.images,
      this.startDates);

  ToursModel.from(ToursEntity toursEntity) {
    ToursModel(
        toursEntity.id,
        toursEntity.name,
        toursEntity.duration,
        toursEntity.maxGroupSize,
        toursEntity.difficulty,
        toursEntity.ratingsAverage,
        toursEntity.ratingsQuantity,
        toursEntity.price,
        toursEntity.summary,
        toursEntity.description,
        toursEntity.imageCover,
        toursEntity.images,
        toursEntity.startDates);
  }
}
