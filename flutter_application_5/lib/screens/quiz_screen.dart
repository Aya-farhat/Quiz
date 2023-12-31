import 'package:flutter/material.dart';
import 'package:flutter_application_5/Global/name.dart';
import 'package:flutter_application_5/Global/quizzz.dart';
import 'package:flutter_application_5/screens/score_screen.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
   QuizScreen({
    //super.key, 
    required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with SingleTickerProviderStateMixin {
  late AnimationController _logocontroller;
  @override
  void initState() {
    super.initState();
   _logocontroller=AnimationController(vsync: this , duration: Duration(seconds: 2));
   _logocontroller.forward();
  
  }
   int index=0;
    int score=0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: widget.categoryMap["color"],
        title: FadeTransition(
          opacity: _logocontroller,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Text("${index+1}/${(widget.categoryMap["data"] as List).length}",
               style: TextStyle(fontSize: 20 ,
               fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1)) ),
              Text(widget.categoryMap["category name"]
              , style: TextStyle(fontSize: 20 , 
              fontWeight: FontWeight.bold,
              color: Colors.white)),
              Image.network("https://as1.ftcdn.net/v2/jpg/05/59/59/30/1000_F_559593020_lcIJ8aE9TYdO0cOhpwtYWPsXLYwOAIAA.jpg",height: 60,)
            ],
          ),
        )
      ),

      body: ScaleTransition(
        scale: _logocontroller,
        child: Container( 
          child:Center(
            child: Column(
            children: [
             SizedBox(height: MediaQuery.of(context).size.height*0.1,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ElevatedButton(
                              style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(widget.categoryMap["color"])),
                                onPressed: () {},
                                 child:  Text(widget.categoryMap["data"][index]["question"],
                                 style: TextStyle(color: Colors.black),)
                                
                                ),
               ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                       Text("Choice is :",style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.1,
                           ),
                              for ( int i=0 ; i <(widget.categoryMap["data"][index]["answers"] as List).length ; i++)
           
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                              style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(widget.categoryMap["color"])),
                                onPressed: () {
                               score= score + int.parse((widget.categoryMap["data"][index]["answers"][i]["score"] ));
                               print(score);
                                  if ( index+1 < (widget.categoryMap["data"] as List).length){
                                    setState(() {
                                      index++;
                                    });
                                  }
                                  else
                                  {
                                     Navigator.pushReplacement(context,  MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>  ScoreScreen(
                                    score: score,
                                    totalnum: index+1,
                                    username: username,
                                  ),
                                     ),
                                       );
                                  }
                                                           
                                },
                                 child:  Text(widget.categoryMap["data"][index]["answers"][i]["ans"],
                                 style: TextStyle(color: Colors.black),)
                             
              
                                
                        ),
              ),
                    
      
            ],
      
          ),
        ),
        
        
          ),
      ));
  }
}