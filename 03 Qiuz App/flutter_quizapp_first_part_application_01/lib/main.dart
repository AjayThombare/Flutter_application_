
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
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState () => _QuizAppState();
}
class _QuizAppState extends State{
  List<Map> allQuestion = [
    {
      "question": "Who is the founder of Java?",
      "option":["James Gosling","Guido van Rossum","Dennis Ritchie","Bjarne Stroustrup"],
      "correctAns":0
    },
    {
      "question": "Who is the founder of Python?",
      "option":["James Gosling","Guido van Rossum","Dennis Ritchie","Bjarne Stroustrup"],
      "correctAns":1
    },
    {
      "question": "Who is the founder of C?",
      "option":["James Gosling","Guido van Rossum","Dennis Ritchie","Bjarne Stroustrup"],
      "correctAns":2
    },
    {
      "question": "Who is the founder of C++?",
      "option":["James Gosling","Guido van Rossum","Dennis Ritchie","Bjarne Stroustrup"],
      "correctAns":3
    },
    {
      "question": "Who is the founder of JavaScript?",
      "option":["James Gosling","Brendan Eich","Dennis Ritchie","Brendan Eich"],
      "correctAns":2
    },
  ];
  int currentQuestion = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 120,
              ),
              Text(
                "Question : ${currentQuestion + 1}/ ${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 370,
            height: 50,
            child: Text(
              "${currentQuestion+1}: ${allQuestion[currentQuestion]["question"]}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 320,
            height: 50,
            child: ElevatedButton(
              onPressed:(){},
              child: Text(
                allQuestion[currentQuestion]['option'][0],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 320,
            height: 50,
            child: ElevatedButton(
              onPressed: (){},
              child: Text(
                allQuestion[currentQuestion]['option'][1],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
           const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 320,
            height: 50,
            child: ElevatedButton(
              onPressed: (){},
              child: Text(
                allQuestion[currentQuestion]['option'][2],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
           const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 320,
            height: 50,
            child: ElevatedButton(
              onPressed: (){},
              child: Text(
                allQuestion[currentQuestion]['option'][3],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          if(currentQuestion < allQuestion.length - 1){
            currentQuestion++;
            setState(() {});
          }
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.forward,
          color: Colors.amber,
        ),
      ),
    );
  }
}