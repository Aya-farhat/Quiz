import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/category_screen.dart';
import 'package:flutter_application_5/Global/name.dart';
import 'package:flutter_application_5/screens/opening_screen.dart';

class ScoreScreen extends StatefulWidget {
final TextEditingController username;
final int score;
final int totalnum;
  
   const ScoreScreen({super.key,required this.score , required this.totalnum , required this.username});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  void dispose() {
    widget.username.dispose(); // Dispose the TextEditingController
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 221, 241),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
             BackButton(
                  onPressed: () {
                    Navigator.push(context,  MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>  CategoryScreen(),
                                           ),
                                        );
                  },
),

          
            Text("Congratulations!",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color:Color.fromARGB(255, 2, 57, 105)),),
           
           Text("${username.text}",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color:Color.fromARGB(255, 2, 57, 105)),),

            Text("${widget.score}/${widget.totalnum}",
            style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 2, 57, 105)),),
                SizedBox(
                        height: MediaQuery.of(context).size.height* 0.1,
                       ),
                       
                       Container(
                        width: MediaQuery.of(context).size.width*0.5,
                         child: ElevatedButton(
                            style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 57, 105))),
                              onPressed: () {
                                 

                         Navigator.push(context,  MaterialPageRoute<void>(
                                builder: (BuildContext context) =>  OpeningScreen(),
                                 ));
                              },
                               child:  Text("Play Again",style: TextStyle(color: Colors.white),)),
                       ),

                    
          ],
        )
        
      ),
      
    ));
  }
}