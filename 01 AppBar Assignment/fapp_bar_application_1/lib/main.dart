import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowBannermode: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AppBar",
            style: TextStyle(
              fontsize:20,
              fontweight:,
            ),
          ),
          backgroundColor: Colors.tealAccent,
        ),
      ),
    );
  }
}
