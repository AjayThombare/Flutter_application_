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

  @override
  Widget build(BuildContext context){
    TextEditingController nameController = TextEditingController();

    String? myName;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField Demo",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
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
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller:nameController,
                style: const TextStyle(
                  fontSize: 20,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.brown
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val){
                  print("Value: $val");
                },
                onEditingComplete: (){
                  print("Editing Completed");
                },
                onSubmitted: (value) => print("Value Submitted: $value"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print("Add Data");
                myName = nameController.text;
                print("My Name: $myName");
                nameController.clear();
                setState((){});
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 83, 130, 216),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 242, 242, 244),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Name: $myName",
              style: const TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}