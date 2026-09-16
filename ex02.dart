import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Livro {
  final String titulo;
  final String autor;

  Livro({
    required this.titulo,
    required this.autor,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLivros(),
    );
  }
}

class TelaLivros extends StatelessWidget {
  const TelaLivros({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Livro> livros = [
      Livro(
        titulo: 'Dom Casmurro',
        autor: 'Machado de Assis',
      ),
      Livro(
        titulo: 'O Cortiço',
        autor: 'Aluísio Azevedo',
      ),
      Livro(
        titulo: 'Harry Potter',
        autor: 'J. K. Rowling',
      ),
      Livro(
        titulo: 'O Hobbit',
        autor: 'J. R. R. Tolkien',
      ),
      Livro(
        titulo: '1984',
        autor: 'George Orwell',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Livros'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: livros.length,
        itemBuilder: (context, index) {
          final Livro livro = livros[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const Icon(
                Icons.book,
                size: 35,
              ),
              title: Text(
                livro.titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Autor: ${livro.autor}',
              ),
            ),
          );
        },
      ),
    );
  }
}
