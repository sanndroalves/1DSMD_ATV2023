import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> disciplinas = [
    'Matemática',
    'Português',
    'Ciências',
    'História',
    'Geografia',
    'Inglês',
    'Educação Física',
    'Artes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Disciplinas'),
      ),
      body: ListView.builder(
        itemCount: disciplinas.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
            child: Text(disciplinas[index]),
          );
        },
      ),
    );
  }
}
