// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tours_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToursCollectionEntity _$ToursCollectionEntityFromJson(
        Map<String, dynamic> json) =>
    ToursCollectionEntity(
      tours: (json['tours'] as List<dynamic>?)
          ?.map((e) => ToursEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ToursCollectionEntityToJson(
        ToursCollectionEntity instance) =>
    <String, dynamic>{
      'tours': instance.tours,
    };

ToursEntity _$ToursEntityFromJson(Map<String, dynamic> json) => ToursEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      maxGroupSize: json['maxGroupSize'] as int?,
      difficulty: json['difficulty'] as String?,
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      ratingsQuantity: json['ratingsQuantity'] as int?,
      price: json['price'] as int?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      imageCover: json['imageCover'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDates: (json['startDates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ToursEntityToJson(ToursEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'maxGroupSize': instance.maxGroupSize,
      'difficulty': instance.difficulty,
      'ratingsAverage': instance.ratingsAverage,
      'ratingsQuantity': instance.ratingsQuantity,
      'price': instance.price,
      'summary': instance.summary,
      'description': instance.description,
      'imageCover': instance.imageCover,
      'images': instance.images,
      'startDates': instance.startDates,
    };
