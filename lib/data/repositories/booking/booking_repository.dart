import 'package:dio/dio.dart';
import 'package:flutter_ex03/core/dio.dart';
import 'package:intl/intl.dart';

import '../../models/booking/booking.dart';

class BookingRepository {
  final _dio = DioClient.instance.dio;

  // 특정 날짜의 타입별 모든 예약목록 조회
  searchBookingListByDate({required DateTime date, required int type}) async {
    final formDate = DateFormat('yyyy-MM-dd').format(date);
    Response response = await _dio.get('/books', queryParameters: {'date': formDate, 'type': type});
    List<Booking> bookingList = (response.data as List)
      .map((data) => Booking.fromJson(data))
      .toList();
    // print(bookingList);
    return bookingList;
  }
}