import 'package:flutter/material.dart';

// AULA 04: NAVEGAÇÃO ENTRE TELAS
// Objetivo: Aprender a navegar entre diferentes telas do app

void main() {
  runApp(MeuPrimeiroApp());
}

class MeuPrimeiroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 04 - Navegação',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PrimeiraTela(), // Tela inicial do app
    );
  }
}

// PRIMEIRA TELA
class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos os direitos reservados'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_movies,
              size: 80,
              color: Color(0xffff0000),
            ),

            SizedBox(height: 20),

            Text(
              'CinemarQUES™',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
            ),

            SizedBox(height: 15),

            Text(
              'SEMANA DO CINEMA, \nVENHA CONFERIR NOSSAS PROMOÇÕES! \n\nConfira nossas novidades abaixo:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),

            SizedBox(height: 40),

            // Botão para navegar para a segunda tela
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaTela()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('FILMES EM CARTAZ', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Botão para navegar para a terceira tela
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraTela()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('COMPRE INGRESSOS', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 8),
                  Icon(Icons.shopping_cart),
                ],
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffffffff)),
            ),

            SizedBox(height: 20),

            // Informação educativa
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.indigo.shade200),
              ),
              child: Column(
                children: [
                  Icon(Icons.info_outline, color: Colors.indigo),
                  SizedBox(height: 8),
                  Text(
                    'Navigator.push() adiciona uma nova tela na pilha de navegação.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.indigo.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SEGUNDA TELA
class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 80, color: Colors.green),

            SizedBox(height: 20),

            Text(
              'Parabéns!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            SizedBox(height: 15),

            Text(
              'Você navegou com sucesso!\nEsta é a segunda tela.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),

            SizedBox(height: 40),

            // Botão para voltar
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 8),
                  Text('Voltar', style: TextStyle(fontSize: 16)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
              ),
            ),

            SizedBox(height: 15),

            // Botão alternativo
            OutlinedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PrimeiraTela()),
              ),
              child: Text('Ir para Primeira (sem voltar)'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
                side: BorderSide(color: Colors.orange),
              ),
            ),

            SizedBox(height: 30),

            // Informação educativa
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Column(
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.green),
                  SizedBox(height: 8),
                  Text(
                    'Navigator.pop() remove a tela atual.\nNavigator.pushReplacement() substitui a tela.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TERCEIRA TELA
class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira Tela"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.widgets, size: 80, color: Colors.deepPurple),
            SizedBox(height: 20),
            Text(
              "Tela de Botões",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text("Botão Elevado"),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: Text("Botão de Texto"),
            ),
            SizedBox(height: 15),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.deepPurple, width: 2),
              ),
              child: Text("Botão Contornado"),
            ),
            SizedBox(height: 15),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, color: Colors.pink, size: 32),
            ),
            SizedBox(height: 15),
            FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Colors.teal,
              icon: Icon(Icons.add),
              label: Text("Floating Button"),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text("Voltar"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
