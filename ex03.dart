import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Aluno {
  final String nome;
  final double nota;

  Aluno({
    required this.nome,
    required this.nota,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaAlunos(),
    );
  }
}

class TelaAlunos extends StatelessWidget {
  const TelaAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Aluno> alunos = [
      Aluno(
        nome: 'João',
        nota: 8.5,
      ),
      Aluno(
        nome: 'Maria',
        nota: 9.0,
      ),
      Aluno(
        nome: 'Pedro',
        nota: 7.5,
      ),
      Aluno(
        nome: 'Ana',
        nota: 6.0,
      ),
      Aluno(
        nome: 'Carlos',
        nota: 5.5,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Alunos'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final Aluno aluno = alunos[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                size: 35,
              ),
              title: Text(
                aluno.nome,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Nota: ${aluno.nota.toStringAsFixed(1)}',
              ),
            ),
          );
        },
      ),
    );
  }
}