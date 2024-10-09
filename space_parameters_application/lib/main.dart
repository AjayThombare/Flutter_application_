// SPACE PARAMETERS FOR COLUMN
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
        appBar: AppBar(
          title: const Text(
            "Space Parameters",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black87
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 254, 195, 21),
            ),
            Container(
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 4, 98, 26),
            )
          ],
        ),
      ),
    );
  }
}



// // SPACE PARAMETERS FOR ROW
// import "package:flutter/material.dart";
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Space Parameters",
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.w700,
//               color: Colors.black87
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),

//         body:Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               width: 150,
//               height: 150,
//               color: const Color.fromARGB(255, 254, 195, 21),
//             ),
//             Container(
//               width: 150,
//               height: 150,
//               color: const Color.fromARGB(255, 4, 98, 26),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }









