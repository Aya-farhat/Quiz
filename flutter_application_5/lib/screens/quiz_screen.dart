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

class _QuizScreenState extends State<QuizScreen> {
   int index=0;
    int score=0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: widget.categoryMap["color"],
        title: Row(
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
            Image.network("https://www.pngmart.com/files/19/Quiz-Logo-PNG-Transparent-Image.png",height: 60,)
          ],
        )
      ),

      body: Container( 
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
      
      
    ));
  }
}