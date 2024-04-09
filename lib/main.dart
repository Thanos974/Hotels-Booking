import 'package:flutter/material.dart';
import 'package:hotel/widgets/home_page.dart';

const dgreen = Color(0xFF17D7A0);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
}
