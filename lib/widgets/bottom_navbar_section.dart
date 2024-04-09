import 'package:flutter/material.dart';
import 'package:hotel/widgets/calendar_page.dart';

class BottomNavBarSection extends StatelessWidget {
  const BottomNavBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey[600],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: d_green,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: d_green,
          ),
          label: 'Tips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: d_green,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
