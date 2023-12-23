import 'package:flutter/material.dart';
void main()=>runApp(const MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController firstController=TextEditingController();
  final TextEditingController secondController=TextEditingController();
  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@CodewithAnik'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,

      ),

      body: Container(
        padding: const EdgeInsets.all(50),
        color: Colors.lime,

        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                'https://media.collegedekho.com/media/img/institute/logo/Shri-Guru-Gobind-Singhji-Institute-of-Engineering-and-Technology-Nanded.jpg',
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                fit: BoxFit.cover, // Adjust the BoxFit property as needed
              ),
            ),
            const Text('Shri Guru Gobind Singhji IE & T\n Vishnupuri, Nanded - 431606',style:  TextStyle(
              letterSpacing: 5,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage:AssetImage('avatar_m.png') ,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             const Text('Made by Aniruddha Kohad (2021BIT055),',
               style: TextStyle(
                 letterSpacing: 5,
                 fontSize: 22,
                 fontWeight: FontWeight.bold,
             ),),

            const SizedBox(
              height: 20,
            ),
             TextField(
              controller: firstController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),hintText:'Enter First Number'),
                keyboardType: TextInputType.number,
          ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: secondController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),hintText:'Enter Second Number'),
                keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed:() {
                  //code execute on button press
                  double a =double.parse(firstController.text);
                  double b =double.parse(secondController.text);
                  result=a+b;
                  //print(result);
                  setState(() {
                    result=a+b;
                  });
                },
                  child: const Text('Add'),
                ),
                ElevatedButton(onPressed:() {
                  //code execute on button press
                  double a =double.parse(firstController.text);
                  double b =double.parse(secondController.text);
                  result=a-b;
                  //print(result);
                  setState(() {
                    result=a-b;
                  });
                },
                  child: const Text('Subtract'),
                ),
                ElevatedButton(onPressed:() {
                  //code execute on button press
                  double a =double.parse(firstController.text);
                  double b =double.parse(secondController.text);
                  result=a*b;
                  //print(result);
                  setState(() {
                    result=a*b;
                  });
                },
                  child: const Text('Multiply'),
                ),
                ElevatedButton(onPressed:() {
                  //code execute on button press
                  double a =double.parse(firstController.text);
                  double b =double.parse(secondController.text);
                  result=a/b;
                  //print(result);
                  setState(() {
                    result=a/b;
                  });
                },
                  child: const Text('Divide'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Result : $result',style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Hello');
  }
}


