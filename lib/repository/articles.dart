// ignore: depend_on_referenced_packages
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'attributes.dart';

part 'articles.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Articles{
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final Attributes? attributes;
  @HiveField(2)


  Articles({this.id, this.attributes});

  factory Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesToJson(this);

  @override
  String toString() {
    return 'Articles{id: $id, attributes: $attributes}';
  }
}