// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationImpl _$$ApplicationImplFromJson(Map<String, dynamic> json) =>
    _$ApplicationImpl(
      id: json['_id'] as String,
      appName: json['appName'] as String,
      repository:
          Repository.fromJson(json['repository'] as Map<String, dynamic>),
      workflows: (json['workflows'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Workflow.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$ApplicationImplToJson(_$ApplicationImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'appName': instance.appName,
      'repository': instance.repository,
      'workflows': instance.workflows,
    };
