
import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {

  int page;

  @JsonKey(name: 'total_results')
  int totalResults;

  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(name: 'results')
  List<Result> results;


  NewsModel({this.page, this.totalResults, this.totalPages, this.results});

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

@JsonSerializable()
class Result {

  @JsonKey(name: 'vote_count')
  int voteCount;

  @JsonKey(name: 'video')
  bool video;

  @JsonKey(name: 'poster_path')
  String posterPath;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'title')
  String title;

  Result({this.voteCount, this.video, this.posterPath, this.id, this.title});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);


}