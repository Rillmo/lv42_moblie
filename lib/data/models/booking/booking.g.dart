// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['_id'] as String,
      user_id: json['user_id'] as String,
      start_time: (json['start_time'] as num).toInt(),
      end_time: (json['end_time'] as num).toInt(),
      date: json['date'] as String,
      type: (json['type'] as num).toInt(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.user_id,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'date': instance.date,
      'type': instance.type,
    };
