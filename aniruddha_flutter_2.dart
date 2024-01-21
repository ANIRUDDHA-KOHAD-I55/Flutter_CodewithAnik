import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, Center, Color, FloatingActionButton, FontWeight, MaterialApp, Scaffold, Text, TextStyle, runApp;
//Scaffold and Appbar widget
/*material app is our root and will act as a wrapper for the rest of the widget inside it*/

//appBar will specify how its gonna look at the top
//Widget starting with capital letter
//Home, appBar-> properties->inside there are some widgets again
//properties start will small letters

void main()=>runApp(MaterialApp(
  home:Scaffold(
    appBar: AppBar(
      title:const Text('My First App'),
      backgroundColor: const Color.fromARGB(255, 116, 9, 231),
      centerTitle: true,
    ),
    body:const Center(
      child:Text('Happy New Year!!',
      style: TextStyle(
        fontSize: 22.0,
        fontWeight:FontWeight.bold,
        letterSpacing: 5,
        fontFamily: 'Poppins',
        color: Color.fromARGB(225, 12, 23, 32),
      ),),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed:(){
        //Adding Functionality
        //print('Happy');
        //print('New');
        //print('Year');
        //print('!!!');
      },
      backgroundColor: const Color.fromRGBO(225, 112, 9, 232),
    //child: const Icon(Icons.add),
      child: const Text('Click'),
      ),
  ),
));

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
