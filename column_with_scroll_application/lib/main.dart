import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: const Text(
            "Column Scroll",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6pJJJhfMasMfukl1HnuVuX0Mhgyy5hJ_FqQ&s",
            ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 195, 184, 150),
              ),
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6pJJJhfMasMfukl1HnuVuX0Mhgyy5hJ_FqQ&s",
            ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 195, 184, 150),
              ),
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6pJJJhfMasMfukl1HnuVuX0Mhgyy5hJ_FqQ&s",
            ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 195, 184, 150),
              ),
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6pJJJhfMasMfukl1HnuVuX0Mhgyy5hJ_FqQ&s",
            ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 195, 184, 150),
              ),
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6pJJJhfMasMfukl1HnuVuX0Mhgyy5hJ_FqQ&s",
            ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 195, 184, 150),
              ),
            ],
          ),
        ),
      ),
    );

  }

}