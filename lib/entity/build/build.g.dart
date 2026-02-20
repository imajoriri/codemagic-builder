// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuildImpl _$$BuildImplFromJson(Map<String, dynamic> json) => _$BuildImpl(
      id: json['_id'] as String,
      status: $enumDecode(_$BuildStatusEnumMap, json['status']),
      versionCodeApk: json['versionCodeApk'] as String?,
      versionCodeIpa: json['versionCodeIpa'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$BuildImplToJson(_$BuildImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'status': _$BuildStatusEnumMap[instance.status]!,
      'versionCodeApk': instance.versionCodeApk,
      'versionCodeIpa': instance.versionCodeIpa,
      'version': instance.version,
    };

const _$BuildStatusEnumMap = {
  BuildStatus.queued: 'queued',
  BuildStatus.preparing: 'preparing',
  BuildStatus.fetching: 'fetching',
  BuildStatus.building: 'building',
  BuildStatus.publishing: 'publishing',
  BuildStatus.testing: 'testing',
  BuildStatus.timeout: 'timeout',
  BuildStatus.warning: 'warning',
  BuildStatus.skipped: 'skipped',
  BuildStatus.canceled: 'canceled',
  BuildStatus.finishing: 'finishing',
  BuildStatus.finished: 'finished',
  BuildStatus.failed: 'failed',
};
