import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title:'Player App',
      home: PlayerApp(),
    );
  }
}
class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});
  @override
  State createState()=> _PlayerAppState();
}
class _PlayerAppState extends State{
  int count = 0;
  List <String> PlayerList = [
    "https://i3.wp.com/cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg?strip=all",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Virat_Kohli_in_PMO_New_Delhi.jpg/220px-Virat_Kohli_in_PMO_New_Delhi.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_zZDXzFzFYA0SlvJliWCQbRamqNVqRbppNg&s",
    "https://www.isportindia.com//storage/app/public/news/1704348848-qZXth.jpg",
  ];
    @override
    Widget build(BuildContext context){
      return Scaffold(
      
        appBar: AppBar(
          title: const Text("Players App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                PlayerList[count],
                height: 400,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {});
            if(count < PlayerList.length-1){
              count++;
            }
            else{
              count = 0;
            }
          },
        ),
      );
    }
}
