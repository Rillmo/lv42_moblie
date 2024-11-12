import 'package:flutter_ex03/data/repositories/booking/booking_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookingRepositoryProvider = Provider<BookingRepository> ((ref) => BookingRepository());