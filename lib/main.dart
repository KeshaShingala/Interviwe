
import 'package:flutter/material.dart';
import 'package:kesha/views/Homepage.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/' : (context) => const home_page(),
      },
    ),
  );
}

