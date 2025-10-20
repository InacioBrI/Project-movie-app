import 'package:flutter/material.dart';
import 'package:myappluciano/pages/login.page.dart';
import 'package:animate_do/animate_do.dart';

// AULA 04: NAVEGAÇÃO ENTRE TELAS
// Objetivo: Aprender a navegar entre diferentes telas do app

void main() {
  runApp(MeuPrimeiroApp());
}

class MeuPrimeiroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 04 - Navegação',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PrimeiraTela(), // TELA INICIAL DO APP
    );
  }
}

// PRIMEIRA TELA
class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // PARTE ANIMADA COM FADEINUP
            FadeInUp(
              duration: Duration(milliseconds: 1500),
              child: Column(
                children: [
                  // Botão 1
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff464646),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SegundaTela()),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'CURTA O HALLOWEEN',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward, color: Color(0xffffffff)),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Botão 2
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffffffff),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TerceiraTela()),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('COMPRE INGRESSOS',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xfffd0202),
                            )),
                        SizedBox(width: 8),
                        Icon(Icons.shopping_cart, color: Color(0xffff0000)),
                      ],
                    ),
                  ),

                  SizedBox(height: 17),

                  // Botão 3
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffff0000),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lanche()),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'COMPRE LANCHES',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.lunch_dining, color: Color(0xffffffff)),
                      ],
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

// TELEFONE PRETO
class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Image.asset('assets/images/telpreto2.jpg'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaLogin()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('TELEFONE PRETO 2', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 8, height: 30),
                  Icon(Icons.shopping_cart, color: Color(0xffffffff)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffff0000),
              ),
            ),

            SizedBox(height: 10),

            // Botão para voltar
            Row(
              // Centraliza os dois botões juntos na tela
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. NOVO BOTÃO: "VOLTAR"
                ElevatedButton(
                  onPressed: () {
                    // Lógica para o botão VOLTAR
                    Navigator.pop(
                        context); // Exemplo: Voltar para a tela anterior
                  },
                  style: ElevatedButton.styleFrom(
                    // Use o mesmo estilo de cor cinza que você estava usando para o PRÓXIMO
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    // Para combinar a forma, use o padding e shape
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back, // Ícone de seta para trás
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text('INÍCIO', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                // Espaço entre os dois botões
                const SizedBox(width: 16), // Ajuste a largura conforme preferir

                // 2. SEU BOTÃO EXISTENTE: "PRÓXIMO ➔"
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuintaTela()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('PRÓXIMO', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xfffffafafa),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // Informação educativa
          ],
        ),
      ),
    );
  }
}

// EM CARTAZ
class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EM CARTAZ",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffff0000),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes1.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes2.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes3.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes4.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes5.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes6.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes7.jpg'),
            ),
            Container(
              width: 800,
              child: Image.asset('assets/images/filmes8.jpg'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.red),
              label: Text("Voltar", style: TextStyle(color: Colors.red)),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff000000)),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// COMPRE LANCHES
class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira Tela"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
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
              SizedBox(height: 300),
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
                child: Text("PIKAAAAAAAA"),
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
      ),
    );
  }
}

// SEXTA-FEIRA 13
class QuintaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 500,
              child: Image.asset('assets/images/sexta13.jpg'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaLogin()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('SEXTA-FEIRA 13', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 8, height: 30),
                  Icon(Icons.shopping_cart, color: Color(0xffffffff)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffff0000),
              ),
            ),

            SizedBox(height: 10),

            // Botão para voltar
            Row(
              // Centraliza os dois botões juntos na tela
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. NOVO BOTÃO: "VOLTAR"
                ElevatedButton(
                  onPressed: () {
                    // Lógica para o botão VOLTAR
                    Navigator.pop(
                        context); // Exemplo: Voltar para a tela anterior
                  },
                  style: ElevatedButton.styleFrom(
                    // Use o mesmo estilo de cor cinza que você estava usando para o PRÓXIMO
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    // Para combinar a forma, use o padding e shape
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back, // Ícone de seta para trás
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text('ANTERIOR', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                // Espaço entre os dois botões
                const SizedBox(width: 16), // Ajuste a largura conforme preferir

                // 2. SEU BOTÃO EXISTENTE: "PRÓXIMO ➔"
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SextaTela()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('PRÓXIMO', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xfffffafafa),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // Informação educativa
          ],
        ),
      ),
    );
  }
}

//TELA DE LOGIN
class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/backgroundlogin.jpg'),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeInUp(
                          duration: Duration(milliseconds: 1800),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff000000)),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xff070707)))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "E-mail ou Telefone",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Senha",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                          duration: Duration(milliseconds: 1900),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color(0xffff0000),
                                  Color(0xffff0000),
                                ])),
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1900),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrimeiraTela()),
                            );
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xffff0000), Color(0xffff0000)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "VOLTAR AO INÍCIO",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      FadeInUp(
                          duration: Duration(milliseconds: 2000),
                          child: Text(
                            "   ESQUECEU SUA SENHA? \nCRIE UMA CONTA GRATUITA",
                            style: TextStyle(color: Color(0xffffffff)),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// EXORCISTA
class SextaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 500,
              child: Image.asset('assets/images/exorcista.jpg'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaLogin()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('O EXORCISTA', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 8, height: 30),
                  Icon(Icons.shopping_cart, color: Color(0xffffffff)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffff0000),
              ),
            ),

            SizedBox(height: 10),

            // Botão para voltar
            Row(
              // Centraliza os dois botões juntos na tela
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. NOVO BOTÃO: "VOLTAR"
                ElevatedButton(
                  onPressed: () {
                    // Lógica para o botão VOLTAR
                    Navigator.pop(
                        context); // Exemplo: Voltar para a tela anterior
                  },
                  style: ElevatedButton.styleFrom(
                    // Use o mesmo estilo de cor cinza que você estava usando para o PRÓXIMO
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    // Para combinar a forma, use o padding e shape
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back, // Ícone de seta para trás
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text('ANTERIOR', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                // Espaço entre os dois botões
                const SizedBox(width: 16), // Ajuste a largura conforme preferir

                // 2. SEU BOTÃO EXISTENTE: "PRÓXIMO ➔"
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SetimaTela()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('PRÓXIMO', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xfffffafafa),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // Informação educativa
          ],
        ),
      ),
    );
  }
}

// IT: A COISA
class SetimaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 500,
              child: Image.asset('assets/images/it.jpg'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaLogin()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('IT: A COISA', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 8, height: 30),
                  Icon(Icons.shopping_cart, color: Color(0xffffffff)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffff0000),
              ),
            ),

            SizedBox(height: 10),

            // Botão para voltar
            Row(
              // Centraliza os dois botões juntos na tela
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. NOVO BOTÃO: "VOLTAR"
                ElevatedButton(
                  onPressed: () {
                    // Lógica para o botão VOLTAR
                    Navigator.pop(
                        context); // Exemplo: Voltar para a tela anterior
                  },
                  style: ElevatedButton.styleFrom(
                    // Use o mesmo estilo de cor cinza que você estava usando para o PRÓXIMO
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    // Para combinar a forma, use o padding e shape
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back, // Ícone de seta para trás
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text('ANTERIOR', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                // Espaço entre os dois botões
                const SizedBox(width: 16), // Ajuste a largura conforme preferir

                // 2. SEU BOTÃO EXISTENTE: "PRÓXIMO ➔"
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        const Color(0xff545353), // Cor Cinza Escuro
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('PRÓXIMO', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xfffffafafa),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // Informação educativa
          ],
        ),
      ),
    );
  }
}

// LANCHE MC X BK
class Lanche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem principal
            Container(
              width: 500,
              height: 400,
              child: Image.asset('assets/images/lanche.jpg'),
            ),

            const SizedBox(height: 20), // Espaço entre a imagem e os botões

            // Linha com McDonald's e Burger King
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botão McDonald's
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffff0000),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.fastfood, color: Colors.white),
                      SizedBox(width: 8),
                      Text('McDonald\'s', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                const SizedBox(width: 30),

                // Botão Burger King
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffff0000),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Burger King', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(Icons.local_dining, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40), // Espaço antes do botão Voltar

            // 🔹 Botão "Voltar" centralizado
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.red),
              label: const Text(
                "Voltar",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
