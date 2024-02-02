import 'package:json_annotation/json_annotation.dart';

part 'tours_entity.g.dart';

@JsonSerializable()
class ToursCollectionEntity {
  @JsonKey(name: "tours")
  List<ToursEntity>? tours;

  ToursCollectionEntity({this.tours});

  factory ToursCollectionEntity.fromJson(Map<String, dynamic> json) =>
      _$ToursCollectionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ToursCollectionEntityToJson(this);
}

@JsonSerializable()
class ToursEntity {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'duration')
  int? duration;
  @JsonKey(name: 'maxGroupSize')
  int? maxGroupSize;
  @JsonKey(name: 'difficulty')
  String? difficulty;
  @JsonKey(name: 'ratingsAverage')
  double? ratingsAverage;
  @JsonKey(name: 'ratingsQuantity')
  int? ratingsQuantity;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'summary')
  String? summary;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'imageCover')
  String? imageCover;
  @JsonKey(name: 'images')
  List<String>? images;
  @JsonKey(name: 'startDates')
  List<String>? startDates;

  ToursEntity(
      {this.id,
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
      this.startDates});

  factory ToursEntity.fromJson(Map<String, dynamic> json) =>
      _$ToursEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ToursEntityToJson(this);
}
