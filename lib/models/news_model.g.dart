// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return NewsModel(
    status: json['status'] as String,
    userTier: json['userTier'] as String,
    total: json['total'] as int,
    pages: json['pages'] as int,
    pageSize: json['pageSize'] as int,
    currentPage: json['currentPage'] as int,
    startIndex: json['startIndex'] as int,
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Result.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    orderBy: json['orderBy'] as String,
  );
}

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'status': instance.status,
      'userTier': instance.userTier,
      'startIndex': instance.startIndex,
      'total': instance.total,
      'pageSize': instance.pageSize,
      'currentPage': instance.currentPage,
      'pages': instance.pages,
      'orderBy': instance.orderBy,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    id: json['id'] as String,
    type: json['type'] as String,
    sectionName: json['sectionName'] as String,
    sectionId: json['sectionId'] as String,
    webPublicationDate: json['webPublicationDate'] as String,
    webUrl: json['webUrl'] as String,
    webTitle: json['webTitle'] as String,
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'sectionId': instance.sectionId,
      'sectionName': instance.sectionName,
      'webPublicationDate': instance.webPublicationDate,
      'webTitle': instance.webTitle,
      'webUrl': instance.webUrl,
    };
