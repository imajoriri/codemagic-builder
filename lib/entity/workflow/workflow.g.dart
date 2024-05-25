// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkflowImpl _$$WorkflowImplFromJson(Map<String, dynamic> json) =>
    _$WorkflowImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      maxBuildDuration: (json['maxBuildDuration'] as num).toInt(),
    );

Map<String, dynamic> _$$WorkflowImplToJson(_$WorkflowImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'maxBuildDuration': instance.maxBuildDuration,
    };
