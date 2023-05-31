// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      title: json['title'] as String?,
      previewText: json['previewText'] as String?,
      content: json['content'] as String?,
      locale: json['locale'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      breaking: json['breaking'] as bool?,
      wallpaper: json['wallpaper'] == null
          ? null
          : Wallpaper.fromJson(json['wallpaper'] as Map<String, dynamic>),
      name: json['name'] as String?,
      intro: json['intro'] as String?,
      cause: json['cause'] as String?,
      symptoms: json['symptoms'] as String?,
      frequency: json['frequency'] as String?,
      progress: json['progress'] as String?,
      consequences: json['consequences'] as String?,
      diagnosis: json['diagnosis'] as String?,
      treatment: json['treatment'] as String?,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'locale': instance.locale,
      'previewText': instance.previewText,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'breaking': instance.breaking,
      'name': instance.name,
      'intro': instance.intro,
      'cause': instance.cause,
      'symptoms': instance.symptoms,
      'frequency': instance.frequency,
      'progress': instance.progress,
      'consequences': instance.consequences,
      'diagnosis': instance.diagnosis,
      'treatment': instance.treatment,
      'wallpaper': instance.wallpaper,
    };
