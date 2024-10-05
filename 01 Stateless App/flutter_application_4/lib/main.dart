// import 'package:flutter/material.dart';
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar:AppBar(
//           title:const Text("India Flag"),
//           centerTitle:true,
//          backgroundColor:Colors.blue,
//         ),
//         body:Center(
//           child:Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width:300,
//                 height: 50,
//                 color:Colors.orange,
//               ),
//               Container(
//                 width: 300,
//                 height: 50,
//                 color: Colors.white,
//                 child: Image.network("https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-1024x1024.png"),
//               ),
//               Container(
//                 width:300,
//                 height: 50,
//                 color: Colors.green,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 216, 210),
        appBar: AppBar(
          title: const Text("India Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 400,
                  color: Color.fromARGB(255, 52, 35, 35),
                ),
                Column(   
                  children: [
                    const SizedBox(
                      height: 180,
                    ),
                    Container(
                      width: 150,
                      height:30,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      color: Colors.white,
                      child: Image.network("https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-1024x1024.png"),
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],              
            ),
          ),
      ),
    );
  }
}