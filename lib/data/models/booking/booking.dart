import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  factory Booking({
    @JsonKey(name: '_id') required String id,
    required String user_id,
    required int start_time,
    required int end_time,
    required String date,
    required int type,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}