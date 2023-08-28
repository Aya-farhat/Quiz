import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/login_screen.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> with SingleTickerProviderStateMixin {
  late AnimationController _logocontroller;
  
   @override
  void initState() {
    super.initState();
   _logocontroller=AnimationController(vsync: this , duration: Duration(seconds: 2));
   _logocontroller.forward();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Stack(
  alignment: Alignment.center,
        children: [

          Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://t3.ftcdn.net/jpg/04/40/07/88/360_F_440078858_wQuMz5yLCvTzl4QA2ZWzO7IS8O1mNcwA.jpg'), 
            fit: BoxFit.cover, 
          ),
        ),
        
      ),
                       
      Positioned(
              left: 0,
              right: 0,
              bottom: 16.0,
              child: Center(
  child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                               LoginScreen(),
                              ),
                              );
                            },
                            style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Colors.green)),
                            child: const Text("start",style: TextStyle(color: Colors.white),)
                            )
              ),
      ),
                       
   Column(
  
            children: [

               SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

              SlideTransition(
                position: Tween<Offset>(begin: Offset(0, -1),end:Offset(0, 0) ).animate(_logocontroller),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/05/59/59/30/1000_F_559593020_lcIJ8aE9TYdO0cOhpwtYWPsXLYwOAIAA.jpg'), 
                ),
              ),
               ScaleTransition(
                scale: _logocontroller,
                 child: Column(
                   children: [
                     Text(
                      'ITI Quiz App',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        fontStyle:FontStyle.italic,
                        color: Color.fromARGB(255, 251, 153, 7),
                      ),
                             ),
                           Text(
                      'We Are Creatve, enjoy our app',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle:FontStyle.italic,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                             ),
                   ],
                 ),
               ),
            ],
            
          )
        ],
       ),
       );
    
  }
}