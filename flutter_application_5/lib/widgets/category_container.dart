import 'package:flutter/material.dart';
import 'package:flutter_application_5/Global/quizzz.dart';
import 'package:flutter_application_5/screens/quiz_screen.dart';

class CategoryContainer extends StatefulWidget {
  final int index;
   CategoryContainer({super.key,required this.index});

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> with SingleTickerProviderStateMixin{
  late AnimationController _logocontroller;
  @override
  void initState() {
    super.initState();
   _logocontroller=AnimationController(vsync: this , duration: Duration(seconds: 2));
   _logocontroller.forward();
  
  }
List names =[ "Sport Test", "General Test" , "History Test" , "IQ Test" , "Math Test" , "Food Test"];

List colors =[Colors.blue ,Color.fromARGB(255, 248, 129, 168),Color.fromARGB(255, 130, 252, 134),
             Color.fromARGB(255, 252, 121, 112),Colors.orange,Color.fromARGB(255, 238, 141, 255)];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child :InkWell(
        onTap: (){
           Navigator.push(context,  MaterialPageRoute<void>(
           builder: (BuildContext context) =>  QuizScreen(categoryMap: datalist[widget.index],),
    ),
  );
        },
      child: Container(
      child: Center(
        child: ScaleTransition(
          scale: _logocontroller,
          child: Text(names[widget.index!],style: TextStyle(fontSize: 30),)),
      ),
      decoration: BoxDecoration(color: colors[widget.index!]),
    )));
  }
}