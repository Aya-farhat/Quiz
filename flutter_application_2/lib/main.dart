import 'package:flutter/material.dart';

void main() {
  runApp( const Directionality(textDirection: TextDirection.ltr , child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
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
    // Button action
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Button Pressed'),
          content: const Text('The button was pressed!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  },
  child: const Text('Start'),
),
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
       ),
    );
  }
}