import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 221, 241),
      body: Container( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Text("Hello, Aya",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 57, 105)),),
                       Text("Your Score is 9/10",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 2, 57, 105)),),
                       SizedBox(
                        height: MediaQuery.of(context).size.height* 1/4,
                       ),
                       
                       ElevatedButton(
                          
                          style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 57, 105))),
                            onPressed: () {},
                             child:  Text("Reset Quiz",style: TextStyle(color: Colors.white),))
                            

          ],
        )
      ),
    ));
  }
}