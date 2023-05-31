// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:search_diseases/repository/wallpaper.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  final String? title, locale;
  final String? previewText;
  final String? content;
  final DateTime? createdAt, updatedAt, publishedAt;
  final bool? breaking;
  final String? name, intro;
  final String? cause, symptoms, frequency, progress, consequences, diagnosis, treatment;
  final Wallpaper? wallpaper;

  Attributes({
    this.title,
    this.previewText,
    this.content,
    this.locale,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.breaking,
    this.wallpaper,
    this.name,
    this.intro,
    this.cause,
    this.symptoms,
    this.frequency,
    this.progress,
    this.consequences,
    this.diagnosis,
    this.treatment,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  String toString() {
    return 'Attributes{title: $title, locale: $locale, previewText: $previewText, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, breaking: $breaking}';
  }
}
