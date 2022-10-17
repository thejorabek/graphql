import 'package:flutter/material.dart';
import 'package:graphql_lesson/view/country_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CountryView(),
    );
  }
}