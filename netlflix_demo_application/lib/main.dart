import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> moviesName = [
      'Action Movies',
      'Comedy Movies',
      'Cartoon Movies',
      'Drama Movies',
      'Horror Movies',
      'Romantic Movies',
      'Sci-Fi Movies',
      'Documentaries',
      'Thrillers',
      'Fantasy Movies'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: moviesName.length,
          // physics: const BouncingScrollPhysics(),

          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Text(
                  moviesName[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,

                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527",
                        
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        // alignment: Alignment.bottomLeft,
                        // decoration: const BoxDecoration(
                        //   border: BorderDirectional(start: BorderSide.none),
                        //   gradient: LinearGradient(
                        //     begin: Alignment.topCenter,
                        //     end: Alignment.bottomCenter,
                        //       colors: [
                        //         Colors.black,
                        //         Colors.red,
                        //       ],
                        //   ),
                        // ),
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://intheposter.com/cdn/shop/files/the-manager-in-the-poster-1_1600x.jpg?v=1694762527"),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),    
    );
  }
}
