// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:search_diseases/repository/data.dart';

part 'wallpaper.g.dart';

@JsonSerializable()
class Wallpaper {
  final Data? data;

  Wallpaper({this.data});

  factory Wallpaper.fromJson(Map<String, dynamic> json) => _$WallpaperFromJson(json);

  Map<String, dynamic> toJson() => _$WallpaperToJson(this);

}
