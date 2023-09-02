import 'package:flutter/material.dart';
import 'package:musique/views/home_view.dart';

void main() {
  runApp(const Musique());
}

class Musique extends StatelessWidget {
  const Musique({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
