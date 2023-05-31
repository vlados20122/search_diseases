// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:search_diseases/repository/wallpaper_attributes.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final int? id;
  final WallpaperAttributes? attributes;

  Data({this.id, this.attributes});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() {
    return 'Data{id: $id, attributes: $attributes}';
  }
}
