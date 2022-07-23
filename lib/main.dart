import 'package:flutter/material.dart';
import 'package:my_app/components/product_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: const [
            ProductBox(
              colors: Colors.amber,
              description: 'This is description 1',
              name: 'Amber Box',
              price: 12,
            ),
            ProductBox(
              colors: Colors.green,
              description: 'This is description 2',
              name: 'Green Box',
              price: 12,
            ),
            ProductBox(
              colors: Colors.teal,
              description: 'This is description 3',
              name: 'Teal Box',
              price: 12,
            ),
            ProductBox(
              colors: Colors.blue,
              description: 'This is description 4',
              name: 'Blue Box',
              price: 12,
            ),
            ProductBox(
              colors: Colors.pink,
              description: 'This is description 5',
              name: 'Pink Box',
              price: 12,
            ),
          ],
        ));
  }
}
