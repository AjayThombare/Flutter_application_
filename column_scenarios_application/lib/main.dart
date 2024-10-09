import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo ",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
        ),
        body:Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 176, 179, 207),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.cyan,
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
