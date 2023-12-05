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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  Color corDoContainer = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextField(
                controller: _senhaController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  validarLogin();
                },
                child: Text('Entrar'),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 200.0,
                height: 200.0,
                color: corDoContainer,
                alignment: Alignment.center,
                child: Text(
                  'Container Central',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validarLogin() {
    String nome = _nomeController.text.trim();
    String senha = _senhaController.text.trim();

    if (nome == 'Senai' && senha == 'mobile23') {
      setState(() {
        corDoContainer = Colors.green;
      });
    } else {
      setState(() {
        corDoContainer = Colors.red;
      });
    }
  }
}
