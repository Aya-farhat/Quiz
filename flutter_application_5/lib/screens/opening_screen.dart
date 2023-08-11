import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,

    decoration: const BoxDecoration(
     color: Colors.green,
    ),
    

      child:  Column(
       children:[
        SizedBox( 
        height: MediaQuery.of(context).size.height* 0.02,
        ),
        
        Image.asset("images/logooo.png",height: MediaQuery.of(context).size.height* 0.2),
      
       SizedBox( 
        height: MediaQuery.of(context).size.height* 0.05,
        ),
       Expanded(child: 
        Container(
          decoration: const BoxDecoration(
            color:Colors.white,borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60))
          ),

          child:  Column(
            children: [
              SizedBox( 
        height: MediaQuery.of(context).size.height* 0.04,
        ),
               const Text("Login", 
               style: TextStyle( fontSize: 30, 
               fontWeight: FontWeight.bold, 
       ),
       ),
//لتصغير التيكست فيلد من الجانبين
        Padding(
              padding: const EdgeInsets.all(20),
             child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.001 ,
                ),
                

                Container(
                  padding: const EdgeInsets.all(0.5),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)
                  ),
                 child: const TextField(
                  decoration: InputDecoration(
                    labelText: "username",
                    hintStyle:TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person)
                  ),
                  )
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.01 ,
                ),


                Container(
                  padding: const EdgeInsets.all(0.5),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: Colors.black)
                  ),
                 child: const TextField(
                  decoration: InputDecoration(
                    labelText: "password",
                    hintStyle:TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.https),
                   suffixIcon: Icon(Icons.visibility_off)
                   ),
                  )
                ),
SizedBox(
                  height: MediaQuery.of(context).size.height *0.02 ,
                ),
               
               Row(
                children: [
                  SizedBox(
                  width: MediaQuery.of(context).size.width *0.5 ,
                ),

                const Text(
                  "New to quizz app?", style: TextStyle(fontSize: 12),
                  ),
                TextButton(onPressed: () {},
                child: const Text(
                  "Register", style: TextStyle(color: Colors.green),
                ),
                ),
                ],
               ),
               SizedBox(
                  height: MediaQuery.of(context).size.height *0.02 ,
                ),
               Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                        width: MediaQuery.of(context).size.width *0.4 ,
                        child: ElevatedButton(
                          style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Colors.green)),
                            onPressed: () {}, child: const Text("login",style: TextStyle(color: Colors.white),)
                            )
                            ),
                                        Image.asset("images/logoo.png",height: MediaQuery.of(context).size.height *0.1,),
                                   const Text("use touch ID", style: TextStyle(color: Colors.grey),),
                            SizedBox(
                  height: MediaQuery.of(context).size.height *0.08 ,
                ),
                    
                Row(
                      children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width *0.1 ,
                  ),
                    TextButton(onPressed: () {}, 
                    child: const Text("Remember me", style: TextStyle(color: Colors.black),
                    ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.2 ,
                  ),
                    TextButton(onPressed: () {}, 
                    child: const Text("forget password?", style: TextStyle(color: Colors.green),
                    ),
                    ),
                ],)
              ],
             )
             ),
            ],
          ),
        )
       ),
    ]
   ) 
   ),
   );
   
  }
}