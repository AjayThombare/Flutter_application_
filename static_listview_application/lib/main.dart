import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Static ListView",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: ListView(
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4H2cZjW8fBnbkelR7zjk9PabnFWvGBBfkzg&s",
            ),
            const Icon(
              Icons.favorite_border,              
              color:Color.fromARGB(255, 32, 27, 26),
            ),
            const Text(        
              "Bhari",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3KLsKw0jLKi6EOWlMs2QnOvqlopxW-8i54w&s",
            
            ),
            GestureDetector(
              onTap: (){
                print("Button pressed");
              },
              child: Container(
              
                color:Colors.amber,
                child: const Text(
                  "Press me",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
