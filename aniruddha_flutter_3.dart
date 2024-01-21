/*import 'package:flutter/material.dart';
// Scaffold and Appbar widget
/* material app is our root widget and will act as a wrapper
for the rest of the widget inside it
*/

// appBar will specify how its gonna look at the top
// Widgets starting with capital later
// home , appBar -> properties-> inside them are our widgets again

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 187, 165, 165),
        ),

        // what content will go in ur body
        body: Center(
          child: Text(
            'HELLO Rio!!!',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontFamily: 'Rubik',
                color: Color.fromARGB(255, 77, 86, 91)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
          backgroundColor: Color.fromARGB(255, 219, 193, 193),
        ),
      ),
    ));


*/

    import 'package:flutter/material.dart';
// Scaffold and Appbar widget
/* material app is our root widget and will act as a wrapper
for the rest of the widget inside it
*/

// appBar will specify how its gonna look at the top
// Widgets starting with capital later
// home , appBar -> properties-> inside them are our widgets again
/*
void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 187, 165, 165),
        ),

        // what content will go in ur body
        body: Center(
          child: Text(
            'HELLO Rio!!!',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontFamily: 'Rubik',
                color: Color.fromARGB(255, 77, 86, 91)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
          backgroundColor: Color.fromARGB(255, 219, 193, 193),
        ),
      ),
    ));
    */

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 187, 165, 165),
      ),

      // what content will go in ur body
      /*
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          child: Text('click me'), // Adding a Text widget as the child
        ),
      ),*/
      /*body: Container(
        padding: const EdgeInsets.all(40.0),
        margin: const EdgeInsets.all(20.0),
        color: Colors.green,
        child:const Text('Lorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem Ipsum Lorem Ipsum Lorem Ipsum'),
      ),*/
      /*body: const Padding(
        padding: EdgeInsets.all(40.0),
        child:Text('Lorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem Ipsum Lorem Ipsum Lorem Ipsum'),
      ),*/
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Align evenly on screen on X axis
        crossAxisAlignment: CrossAxisAlignment.end, //align vertically at top most or bottom most of ROW
        children: <Widget>[
          const Text('Aniruddha'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Do Not Click Red Button!'),
          ),
          Container(
            color: Colors.cyan,
            padding: const EdgeInsets.all(20.0),
            child: const Text('Inside Container'),
          )
        ],
      ),*/
      /*body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Align evenly on screen on X axis
        crossAxisAlignment: CrossAxisAlignment.start, //align vertically at top most or bottom most of ROW
        children: <Widget>[
          const Row(
            children:<Widget>[
              Text('Hello'),
              Text('Aniruddha'),
            ]
          ),
          //const Text('Aniruddha'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Do Not Click Red Button!'),
          ),
          Container(
            color: Colors.cyan,
            padding: const EdgeInsets.all(20.0),
            child: const Text('Inside Container'),
          ),
          Container(
            color: Colors.pink,
            padding: const EdgeInsets.all(20.0),
            child: const Text('Inside Container'),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.pink,
            child: const Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.pink,
            child: const Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.pink,
            child: const Text('One'),
          ),
        ],

      ),*/
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Align evenly on screen on X axis
        crossAxisAlignment: CrossAxisAlignment.start, //align vertically at top most or bottom most of ROW
        children: <Widget>[
          Expanded(
            flex: 1,  //this is used for ratio proportion
              child: Container(
                padding: const EdgeInsets.all(20.0),
                color: Colors.cyan[300],
                child: const Text('One'),
          ),
          ),
          Expanded(
            flex: 10,  //this is used for ratio proportion
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.yellow[300],
              child: const Text('Hey! This is Aniruddha!'),
            ),
          ),
          Expanded(
            flex: 5, //this is used for ratio proportion
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.red[300],
              child: const Text('xyz'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0, 255, 20),
        child: const Text('click'),
      ),
    );
  }
}