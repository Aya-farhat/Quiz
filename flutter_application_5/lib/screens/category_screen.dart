import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/category_container.dart';

class CategoryScreen extends StatefulWidget {
   CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>with SingleTickerProviderStateMixin {
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
     body: FadeTransition(
      opacity: _logocontroller,
       child: Column(
        children: [ for(int i=0 ; i<6 ; i++) CategoryContainer(index:i) ],
       ),
     )
    );
  }
}