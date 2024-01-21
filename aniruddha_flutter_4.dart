import 'package:flutter/material.dart';

void main()=>runApp(const MaterialApp(
  home: Idcard(),
));


class Idcard extends StatefulWidget{ //
  const Idcard({super.key});

  @override
  State<Idcard> createState() => _IdcardState();
}

class _IdcardState extends State<Idcard> {
  int currentlevel=0; //Initiate current level class here

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Colors.lime,
      appBar: AppBar(
        title: const Text('My ID Card'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(200, 49, 6, 238),
        elevation: 10,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentlevel+=1;
          });
        },
        backgroundColor: Colors.lime,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,30,40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage:AssetImage('avatar_m.png') ,
              ),
            ),
            const Divider(
              color: Colors.black,
              height:60.0,
            ),
            const Text('Name : ',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0
              ),
            ),
            const Text('Aniruddha Kohad',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize:30.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('HomeTown : ',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
               ),
            ),
            const Text('Nagpur',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize:30.0,
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic,
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Current Year : ',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            const Text('3rd',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize:30.0,
                //fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Current Level : ',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '$currentlevel',
              style: const TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize:30.0,
                //fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '2021bit055@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
