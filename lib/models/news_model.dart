
import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'sectionId')
  String sectionId;

  @JsonKey(name: 'sectionName')
  String sectionName;

  @JsonKey(name: 'webPublicationDate')
  String webPublicationDate;

  @JsonKey(name: 'webTitle')
  String webTitle;

  @JsonKey(name: 'webUrl')
  String webUrl;

  @JsonKey(name: 'apiUrl')
  String apiUrl;

  NewsModel({this.id, this.sectionId, this.sectionName, this.webPublicationDate, this.webTitle, this.webUrl, this.apiUrl});

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);


}