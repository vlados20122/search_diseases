// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WallpaperAttributes _$WallpaperAttributesFromJson(Map<String, dynamic> json) =>
    WallpaperAttributes(
      name: json['name'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      alternativeText: json['alternativeText'] as String?,
      caption: json['caption'] as String?,
      hash: json['hash'] as String?,
      ext: json['ext'] as String?,
      mime: json['mime'] as String?,
      url: json['url'] as String?,
      provider: json['provider'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WallpaperAttributesToJson(
        WallpaperAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'url': instance.url,
      'provider': instance.provider,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'height': instance.height,
    };
