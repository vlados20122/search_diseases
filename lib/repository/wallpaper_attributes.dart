// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'wallpaper_attributes.g.dart';

@JsonSerializable()
class WallpaperAttributes {
  final String? name, alternativeText, caption, hash, ext, mime, url, provider;
  final DateTime? createdAt, updatedAt;
  final double? height;

  WallpaperAttributes({
    this.name,
    this.height,
    this.alternativeText,
    this.caption,
    this.hash,
    this.ext,
    this.mime,
    this.url,
    this.provider,
    this.createdAt,
    this.updatedAt,
  });

  factory WallpaperAttributes.fromJson(Map<String, dynamic> json) => _$WallpaperAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$WallpaperAttributesToJson(this);

  @override
  String toString() {
    return 'WallpaperAttributes{name: $name, alternativeText: $alternativeText, ext: $ext, url: $url}';
  }
}
