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
  final List<String> filmes = [
    'Filme 1',
    'Filme 2',
    'Filme 3',
    'Filme 4',
    'Filme 5',
    'Filme 6',
    'Filme 7',
    'Filme 8',
    'Filme 9',
    'Filme 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Filmes'),
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
            child: Text(filmes[index]),
          );
        },
      ),
    );
  }
}
