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

class _ScoreScreenState extends State<ScoreScreen> with SingleTickerProviderStateMixin{
late AnimationController _logocontroller;
  @override
  void initState() {
    super.initState();
   _logocontroller=AnimationController(vsync: this , duration: Duration(seconds: 2));
   _logocontroller.forward();
  
  }
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

          
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1),end:Offset(0, 0) ).animate(_logocontroller),
              child: Text("Congratulations!",
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color:Color.fromARGB(255, 2, 57, 105)),),
            ),
           
           FadeTransition(
            opacity: _logocontroller,
             child: Text("${username.text}",
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color:Color.fromARGB(255, 2, 57, 105)),),
           ),

            ScaleTransition(
              scale: _logocontroller,
              child: Text("your score is: ${widget.score}/${widget.totalnum}",
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 2, 57, 105)),),
            ),
                SizedBox(
                        height: MediaQuery.of(context).size.height* 0.1,
                       ),
                       
                       ScaleTransition(
                        scale: _logocontroller,
                         child: Container(
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
                       ),

                    
          ],
        )
        
      ),
      
    ));
  }
}