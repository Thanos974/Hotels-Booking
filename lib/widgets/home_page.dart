import 'package:flutter/material.dart';
import 'package:hotel/widgets/bottom_navbar_section.dart';
import 'package:hotel/widgets/hotel_section.dart';
import 'package:hotel/widgets/my_appbar.dart';
import 'package:hotel/widgets/search_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchSection(),
            HotelSection(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarSection(),
    );
  }
}
