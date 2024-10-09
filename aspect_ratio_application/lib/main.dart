import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState ()=> _MyAppState();
}
class _MyAppState extends State{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Container(
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQpOIRuQS-NUiW8I_u1g3en6x-9bO6gdlvgg&s",
            ),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );

  }
}