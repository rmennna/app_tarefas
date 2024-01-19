import 'package:app_tarefas/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: opacidade ? 1 : 0,
        child: ListView(
          children: const [
            Task(
              'Aprender Flutter',
              'assets/images/dash.png',
              3,
            ),
            Task(
              'Andar de Bike',
              'assets/images/bike.webp',
              2,
            ),
            Task(
              'Meditar',
              'assets/images/meditar.jpeg',
              5,
            ),
            Task(
              'Ler',
              'assets/images/livro.jpg',
              1,
            ),
            Task(
              'Jogar',
              'assets/images/jogar.jpg',
              3,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
