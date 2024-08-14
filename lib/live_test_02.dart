import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: "intro App",
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter Text Styling",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold ),
            ),

            const SizedBox(height: 8,),

            Text(
              "Experiment with text styles",
              style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),
            ),

            const SizedBox(height: 8,),

            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("You clicked the button!"),
                    ),
                  );
                },
                child: Text("Click Me")),

            const SizedBox(height: 8,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to ",style: TextStyle( fontSize: 20)),
                Text("Flutter!",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),)
              ],
            ),







          ],
        ),
      ),
    );
  }
}
