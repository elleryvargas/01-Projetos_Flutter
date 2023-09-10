import 'dart:math';

import 'package:flutter/material.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Frases do dia'),
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
  int _numeroAleatorio = 0;
  List _frases = [
    'Faça sempre o seu melhor!',
    'E acredite que o melhor possa ser feito!',
    'Não espere, ponha em prática!',
    'Mesmo que pareça difícil, não pare!',
    'Só trabalhando é possível trilhar o caminho!',
    'Tenha coragem!',
    'Descubra quem você realmente é…',
    'E se aceite!',
    'Não espere que as respostas caiam do céu!',
    'Aprenda a lidar com as situações do melhor jeito!'
      ];
//Frases retiradas do site https://www.pensador.com/melhores_frases_de_motivacao_e_inspiracao/
  void _incrementCounter() {
    setState(() {

      _numeroAleatorio = new Random().nextInt(10);//0,1,2,3,4,5,6,7,8,9


    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
