import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Stack(
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
                       
   const Align(
          alignment: Alignment.center,
   child: Column(
  
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://barretstown.org/wp-content/uploads/2022/10/Blue-Yellow-Modern-Waves-Quiz-Time-Instagram-Post.png'), 
              ),
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
   )
        ],
       ),
       );
    
  }
}