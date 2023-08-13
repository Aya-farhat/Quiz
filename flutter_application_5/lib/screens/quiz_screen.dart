import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/score_screen.dart';

class QuizScreen extends StatelessWidget {
   QuizScreen({super.key});
 List names = ["Paris" , " London" , "Moscow" ,"Rome"] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 149, 203, 248),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            Text("3/10", style: TextStyle(fontSize: 20 ,
             fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1)) ),
            Text("General Quiz", style: TextStyle(fontSize: 20 , 
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
             ElevatedButton(
                          style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 224, 238, 250))),
                            onPressed: () {},
                             child: const Text("Question1: What is the capital of france?",style: TextStyle(color: Colors.black),)
                            
                            ),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.01,),


                            Text("Choice is :",style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
    SizedBox(
      height: MediaQuery.of(context).size.height*0.1,
    ),
                            for ( int i=0 ; i<4 ; i++)
     
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
            
                            
                            style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 224, 238, 250))),
                              onPressed: () {
                                                          Navigator.push(context,  MaterialPageRoute<void>(
                                builder: (BuildContext context) =>  ScoreScreen(),
                ),
              );
                              },
                               child:  Text(names[i],style: TextStyle(color: Colors.black),)
                           
            
                              
                      ),
            ),
                  

          ],

        ),
      ),
      
      
    ));
  }
}