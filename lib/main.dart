import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex03/ui/views/booking_view.dart';
import 'package:flutter_ex03/ui/widgets/appbar.dart';
import 'package:flutter_ex03/ui/widgets/sidebar_menu.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/repositories/booking/booking_repository.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Color green = Color.fromRGBO(0, 200, 59, 1);
  final Color red = Color.fromRGBO(234, 42, 54, 1);
  final Color blue = Color.fromRGBO(82, 127, 216, 1);

  @override
  Widget build(BuildContext context) {

    BookingRepository bookingRepository = BookingRepository();
    DateTime date = DateTime(2024, 5, 10);
    bookingRepository.searchBookingListByDate(date: date, type: 3);
    return MaterialApp(
      theme: _getTheme(),
      title: 'Level 42',
      home: HomePage(),
    );
  }

  ThemeData _getTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.grey,
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
      ),
      primaryColor: green,
      primaryColorDark: red,
      primaryColorLight: blue,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentTab = 0;

  @override
  Widget build(BuildContext context) {
    Widget page = switch (currentTab) {
      0 => BookingView(),
      1 => Placeholder(),
      _ => throw UnimplementedError('no widget for $currentTab')
    };
    return Scaffold(
      appBar: AppbarWidget(),
      drawer: SidebarMenuWidget(),
      body: BookingView(),
    );
  }
}
