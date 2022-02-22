import 'package:flutter/material.dart';
import 'package:hotel/widgets/calendar_range.dart';
import 'package:hotel/widgets/period_section.dart';
import 'package:hotel/widgets/validate_booking_sectoin.dart';

DateTime kNow = DateTime.now();
DateTime kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
DateTime kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

const d_green = const Color(0xFF54D3C2);

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          PeriodSection(),
          CalendarRange(),
          ValidateBookingSection(),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
