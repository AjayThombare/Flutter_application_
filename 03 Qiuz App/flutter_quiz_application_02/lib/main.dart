
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
  State createState() => _QuizAppState();
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
      "option":["James Gosling","Guido van Rossum","Dennis Ritchie","Brendan Eich"],
      "correctAns":3
    },
  ];
  int currentQuestionNumber = 0;
  int selectionAnswerIndex = -1;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectionAnswerIndex != -1){
      if(answerIndex == allQuestion[currentQuestionNumber]["correctAns"]){
        return const WidgetStatePropertyAll(Color.fromARGB(255, 18, 181, 24));
      }
      else if(answerIndex==selectionAnswerIndex){
        return const WidgetStatePropertyAll(Color.fromARGB(255, 208, 45, 33));
      }
      else{
        return const WidgetStatePropertyAll(null);
      }
    }
    else{
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.amberAccent,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height:30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 120,
              ),
              Text(
                "Question : ${currentQuestionNumber+1}/${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
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
              "${currentQuestionNumber+1}.  ${allQuestion[currentQuestionNumber]["question"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,

              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed: (){
                if(selectionAnswerIndex == -1){
                  selectionAnswerIndex = 0;
                  setState(() {});
                }
              },
              child: Text(
                "A. ${allQuestion[currentQuestionNumber]['option'][0]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed: (){
                if(selectionAnswerIndex == -1){
                  selectionAnswerIndex = 1;
                  setState(() {});
                }
              },
              child: Text(
                "B. ${allQuestion[currentQuestionNumber]['option'][1]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed: (){
                if(selectionAnswerIndex == -1){
                  selectionAnswerIndex = 2;
                  setState(() {});
                }
              },
              child: Text(
                "C. ${allQuestion[currentQuestionNumber]['option'][2]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed: (){
                if(selectionAnswerIndex == -1){
                  selectionAnswerIndex = 3;
                  setState(() {});
                }
              },
              child: Text(
                "D. ${allQuestion[currentQuestionNumber]['option'][3]}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(selectionAnswerIndex != -1){

            if(currentQuestionNumber<allQuestion.length-1){
              currentQuestionNumber++;

            }
            else{
              selectionAnswerIndex = -1;
              // setState(() {});
            }
            selectionAnswerIndex = -1;
            setState(() {});
          }
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.forward,
          color: Colors.amberAccent,
        ), 
      ),
    );
  }
}