import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprendiendo widgets',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("Hola mundo"),
        ),
        // Gridview vs .buildeGridViewr
        body: const yellowWidget(),
      ),
    );
  }
}

class yellowWidget extends StatefulWidget {
  const yellowWidget({super.key});

  @override
  State<yellowWidget> createState() => _yellowWidgetState();
}

class _yellowWidgetState extends State<yellowWidget> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            number = number + 1;
            // });
            // print("Hola mundo"
          });
        },
        child: Container(
          margin: const EdgeInsets.all(8),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: Center(child: Text(number.toString())),
        ),
      ),
    );
  }
}
