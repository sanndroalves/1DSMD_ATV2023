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
  final List<String> musicas = [
    'Música 1',
    'Música 2',
    'Música 3',
    'Música 4',
    'Música 5',
    'Música 6',
    'Música 7',
    'Música 8',
    'Música 9',
    'Música 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Músicas'),
      ),
      body: ListView.builder(
        itemCount: musicas.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
            child: Text(musicas[index]),
          );
        },
      ),
    );
  }
}
