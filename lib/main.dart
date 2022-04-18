import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello_flutter'),
        ),
        body: Column(
          children: [
            Text('Question: Who is the founder of modern Egypt?'),
            ElevatedButton(
              child: Text('Al Sisi'),
              onPressed: () {
                print('alsisi');
              },
            ),
            ElevatedButton(
              child: Text('Narmer'),
              onPressed: () {
                print('narmer');
              },
            ),
            ElevatedButton(
              child: Text('Ramases II'),
              onPressed: () {
                print('ramasesii');
              },
            ),
          ],
        ),
      ),
    );
  }
}
