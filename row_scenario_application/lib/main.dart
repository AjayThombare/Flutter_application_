import "package:flutter/material.dart";
void main(){
  runApp (const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Row Scenario",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 101, 166, 219),
        ),
        body:Container(
          height:MediaQuery.of(context).size.height,
          // height: 200,
          color: const Color.fromARGB(255, 158, 225, 218),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 150,
                color: const Color.fromARGB(255, 38, 192, 156),
              ),
            ],
          ),
        ),
      ),
    );
  }
}