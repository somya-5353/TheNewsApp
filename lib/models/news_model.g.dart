// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return NewsModel(
    id: json['id'] as String,
    sectionId: json['sectionId'] as String,
    sectionName: json['sectionName'] as String,
    webPublicationDate: json['webPublicationDate'] as String,
    webTitle: json['webTitle'] as String,
    webUrl: json['webUrl'] as String,
    apiUrl: json['apiUrl'] as String,
  );
}

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'id': instance.id,
      'sectionId': instance.sectionId,
      'sectionName': instance.sectionName,
      'webPublicationDate': instance.webPublicationDate,
      'webTitle': instance.webTitle,
      'webUrl': instance.webUrl,
      'apiUrl': instance.apiUrl,
    };
