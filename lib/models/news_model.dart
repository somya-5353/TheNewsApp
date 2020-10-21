
import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'userTier')
  String userTier;

  @JsonKey(name: 'startIndex')
  int startIndex;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'currentPage')
  int currentPage;

  @JsonKey(name: 'pages')
  int pages;

  @JsonKey(name: 'orderBy')
  String orderBy;

  @JsonKey(name: 'results')
  List<Result> results;


  NewsModel({this.status, this.userTier, this.total, this.pages, this.pageSize, this.currentPage, this.startIndex, this.results, this.orderBy});

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

@JsonSerializable()
class Result {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'type')
  String type;

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


  Result({this.id, this.type, this.sectionName, this.sectionId, this.webPublicationDate, this.webUrl, this.webTitle});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);


}