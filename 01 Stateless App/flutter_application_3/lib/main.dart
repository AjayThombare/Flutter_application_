
import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Third Application"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Container(
                width: 200,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 200,
                height: 100,
                color: const Color.fromARGB(255, 182, 80, 80),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.green,
              ),
          
            ],
            
          ),
        ),
      ),
    );
  }
}
