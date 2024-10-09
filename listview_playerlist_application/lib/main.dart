import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState () => _MyApp();
}
class _MyApp extends State{
  TextEditingController nameController = TextEditingController();
  String? myName;
  List<String> playersList = [];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField ListView Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),  
          ),
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 20,
                  color:  Colors.amber,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.brown,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val){
                  print("Vlaue: $val");
                },
                onEditingComplete: (){
                  print("Editing Complete");
                },
                onSubmitted: (value){
                  print("Value Submitted: $value");
                },
              ),
            ),
              const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print("Add Data");
                myName = nameController.text.trim();
                print("My Name: $myName");
                if(myName!=""){
                  playersList.add(myName!);
                  print("playerList.length");
                  nameController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 120, 137, 153),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                  fontSize: 20,
                  color:  Color.fromARGB(255, 8, 8, 7),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: playersList.length,
              shrinkWrap: true,
              itemBuilder:(context,index){
                return Text(
                  "Name : ${playersList[index]}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}