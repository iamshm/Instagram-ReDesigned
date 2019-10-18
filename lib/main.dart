import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/FeedScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI Redesign',
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}
