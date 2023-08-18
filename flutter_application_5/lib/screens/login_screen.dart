import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

final _formKey = GlobalKey<FormState>();
final TextEditingController _password =TextEditingController();
final TextEditingController _email =TextEditingController();

String? _yourPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
   final RegExp uppercasePattern = RegExp(r'^[A-Z]');
   final RegExp specialCharPattern =RegExp(r'[!@#\$%^&*()..?":{}[<>]'); 
   final RegExp digitPattern= RegExp(r'\d');
   
                     if (value.isEmpty)
                      { return 'Please enter your password';  } 
                    else if (value.length < 10) 
                      { return 'Password must have at least 10 characters'; } 
                    else if (!uppercasePattern.hasMatch(value)) 
                      { return 'Password must start with a capitalize'; }
                    else if (!specialCharPattern.hasMatch(value)) 
                     {return 'Password must contains  special character';}
                    else if (!digitPattern.hasMatch(value)) 
                     {return 'Password must contains at least one digit';}
                     return null;
                           }

        String? _yourEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }                   
    if (!value.contains("@")||!value.contains(".")||!value.contains("com"))
    {
      return "Not found";
    }

        }

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
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color:Colors.white,borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60))
          ),
      
          child:  Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox( 
                  height: MediaQuery.of(context).size.height* 0.02,
                  ),
                 const Text("Login", 
                 style: TextStyle( fontSize: 30, 
                 fontWeight: FontWeight.bold, 
                 ),
                 ),
                
                  SizedBox(
                    height: MediaQuery.of(context).size.height *0.001 ,
                  ),
                
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                     child:  TextFormField(
                      validator: (value) {
                    if (value!.isEmpty) 
                        return "User name must not be empty ";
                    if (value.length <= 5)
                        return "User name must not be more than 5 charcters";
                    if(value[0] != value[0].toUpperCase())    
                        return "First litter must be capitalize";
                                   },
                      decoration: InputDecoration(
                      labelText: "username",
                        hintStyle:TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.person),
                      ),
                      )
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                     child:  TextFormField(
                  controller: _email,
                  validator: _yourEmail,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        hintStyle:TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.mail),
                       ),
                      )
                    ),
                  ),
                
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                     child:  TextFormField(
                      controller: _password,
                      validator: _yourPassword,
                      decoration: InputDecoration(
                        labelText: "password",
                        hintStyle:TextStyle(color: Colors.grey),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(Icons.https),
                       suffixIcon: Icon(Icons.visibility_off)
                       ),
                      )
                    ),
                  ),
                 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                     height: 20,
                 ),
                 
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: Container(
                            width: MediaQuery.of(context).size.width *0.5 ,
                            child: ElevatedButton(
                              style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Colors.green)),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    
                                        Navigator.push(context,  MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>  CategoryScreen(),
                                           ),
                                        );
                                          }
                                  
                                }, child: const Text("login",style: TextStyle(color: Colors.white),)
                                )
                                ),
                 ),
                       Image.asset("images/logoo.png",height: MediaQuery.of(context).size.height *0.1,),
                        const Text("use touch ID", style: TextStyle(color: Colors.grey),),
                     Spacer(),
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                      TextButton(onPressed: () {}, 
                      child: const Text("Remember me", style: TextStyle(color: Colors.black),
                      ),
                      ),
                  
                      TextButton(onPressed: () {}, 
                      child: const Text("forget password?", style: TextStyle(color: Colors.green),
                      ),
                      ),
                  ],
                  )
                ],
               ),
          )
             ),
          
          ),
         ] )
      
       ),
  
    
   
   );
   
  }
}