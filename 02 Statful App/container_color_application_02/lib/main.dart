import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ContainerApp(),
    );   
  }
}
class ContainerApp extends StatefulWidget{
  const ContainerApp({super.key});
  @override
  State createState() =>_ContainerAppState();
}
class _ContainerAppState extends State{
  bool colorChange = true;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Color"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        // backgroundColor: colorChange?const Color.fromARGB(255, 71, 137, 192):const Color.fromARGB(255, 221, 183, 70),
      ),
      body: Center(
        child:Container(
          width: 200,
          height: 200,
          color:colorChange?const Color.fromARGB(255, 230, 22, 7):const Color.fromARGB(255, 20, 145, 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Text("Toggle"),
        onPressed:(){
          if(colorChange==true){
            colorChange = false;
          }
          else{
            colorChange = true;
          }
          setState(() {});
        }
        ),
    );
  }
}