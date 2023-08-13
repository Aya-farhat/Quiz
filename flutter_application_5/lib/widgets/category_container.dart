import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int? index;
   CategoryContainer({super.key, this.index});
List names =[ "Sport Test", "General Test" , "History Test"];
List colors =[Colors.blue,Colors.green,Colors.orange];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child :InkWell(
        onTap: (){
           Navigator.push(context,  MaterialPageRoute<void>(
           builder: (BuildContext context) =>  QuizScreen(),
    ),
  );
        },
      child: Container(
      child: Center(
        child: Text(names[index!],style: TextStyle(fontSize: 30),),
      ),
      decoration: BoxDecoration(color: colors[index!]),
    )));
  }
}