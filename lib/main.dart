import 'package:flutter/material.dart';

import './home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Calculator App",
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.red),
      home: HomePage(),
    );
  }
}
