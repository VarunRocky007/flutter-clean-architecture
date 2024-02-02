import 'package:json_annotation/json_annotation.dart';

part 'common_response_entity.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class CommonResponseEntity<T> {
  @JsonKey(name: "success")
  String? success;
  @JsonKey(name: "data")
  T? data;

  CommonResponseEntity({this.success, this.data});

  factory CommonResponseEntity.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$CommonResponseEntityFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$CommonResponseEntityToJson(this, toJsonT);
}
