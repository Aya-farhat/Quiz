import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [ for(int i=0 ; i<6 ; i++) CategoryContainer(index:i) ],
     )
    );
  }
}