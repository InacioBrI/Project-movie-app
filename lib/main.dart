import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(const MeuPrimeiroApp());
}

class MeuPrimeiroApp extends StatelessWidget {
  const MeuPrimeiroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cine Marques',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const PrimeiraTela(),
    );
  }
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 1200),
              child: SizedBox(
                height: 380,
                child: Image.asset('assets/images/cinemarques.png'),
              ),
            ),
            const SizedBox(height: 50),
            FadeInUp(
              duration: const Duration(milliseconds: 1200),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4A148C),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SegundaTela(),
                    ),
                  );
                },
                child: const Text(
                  'ENTRAR',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  const SegundaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      appBar: AppBar(
        backgroundColor: const Color(0xff4A148C),
        title: const Text('Bem-vindo ao Cine Marques'),
        centerTitle: true,
      ),
      body: FadeInUp(
        duration: const Duration(milliseconds: 1200),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.movie_creation_outlined,
                size: 100,
                color: Colors.purpleAccent,
              ),
              const SizedBox(height: 30),
              const Text(
                'O melhor do cinema está aqui!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuintaTela(),
                    ),
                  );
                },
                child: const Text(
                  'PRÓXIMA TELA',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('VOLTAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuintaTela extends StatelessWidget {
  const QuintaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f0f0f),
      appBar: AppBar(
        backgroundColor: const Color(0xff4A148C),
        title: const Text('Filmes em Destaque'),
        centerTitle: true,
      ),
      body: FadeIn(
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              '🎬 Em Cartaz:',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            _filmeCard(
              context,
              'A Noite do Terror',
              'assets/images/horror.jpg',
              'Um clássico do Halloween cheio de sustos e diversão!',
            ),
            _filmeCard(
              context,
              'Corrida Maldita',
              'assets/images/action.jpg',
              'Velocidade, adrenalina e muita ação na tela!',
            ),
            _filmeCard(
              context,
              'Amor nas Estrelas',
              'assets/images/romance.jpg',
              'Uma história de amor intergaláctica inesquecível.',
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('VOLTAR'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _filmeCard(
      BuildContext context, String titulo, String imagem, String descricao) {
    return FadeInUp(
      duration: const Duration(milliseconds: 800),
      child: Card(
        color: const Color(0xff1c1c1c),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagem,
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      descricao,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LancheTela(),
                          ),
                        );
                      },
                      child: const Text(
                        'VER DETALHES',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LancheTela extends StatelessWidget {
  const LancheTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0a0a),
      appBar: AppBar(
        backgroundColor: const Color(0xff4A148C),
        title: const Text('Lanche do Cinema'),
        centerTitle: true,
      ),
      body: FadeIn(
        duration: const Duration(milliseconds: 1200),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.fastfood, size: 100, color: Colors.amberAccent),
              const SizedBox(height: 20),
              const Text(
                'Pipoca, refri e diversão!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('VOLTAR'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('VOLTAR AO INÍCIO'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
