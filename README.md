#  Mobile app - CineMarques.

*Autor:
*  Inácio Barbosa De Lima 2587078,
* Nadine Lima Marques 181434,
*  Pedro Moural 2430266,
*  Gabriel Canha 2408209,
*  Willian Saturnino 2444705. 

*Disciplina:* Desenvolvimento Mobile (Aula 04)  
*Tema:* Navegação entre telas e animações no Flutter  

---

 1. Descrição Geral
Este projeto foi desenvolvido em *Flutter* com o objetivo de praticar a navegação entre diferentes telas,  
a utilização de **animações (com o pacote animate_do)** e o uso de componentes visuais como botões, imagens  
e layouts. O tema central do app é o *Halloween*, simulando um aplicativo de cinema com opções de filmes,  
compra de ingressos e lanches.

---

2. Estrutura Principal
- *main()* → Função principal que executa o app com a classe MeuPrimeiroApp  
- *MeuPrimeiroApp* → Define o MaterialApp, tema e a tela inicial (PrimeiraTela)

---

 3. Funcionalidades

### PrimeiraTela
Tela inicial do aplicativo com fundo escuro, imagem principal e três botões de navegação:
- “CURTA O HALLOWEEN” → Vai para SegundaTela
- “COMPRE INGRESSOS” → Vai para TerceiraTela
- “COMPRE LANCHES” → Vai para Lanche()

 SegundaTela – Telefone Preto
Exibe uma imagem e dois botões — um para ir à próxima tela (QuintaTela) e outro para voltar ao início.

TerceiraTela – Em Cartaz
Lista de filmes em cartaz com várias imagens e um botão “Voltar”.

QuartaTela – Tela de Botões
Demonstração de diferentes tipos de botões do Flutter (Elevated, Text, Outlined, IconButton, FAB).

QuintaTela – Sexta-feira 13
Mostra a imagem do filme e permite navegar para frente (SextaTela) ou voltar.

SextaTela – O Exorcista
Apresenta a imagem e opções para seguir para SetimaTela ou voltar.

SetimaTela – It: A Coisa
Última tela da sequência de filmes com botão para voltar.

Lanche
Tela com opções de lanches (McDonald’s e Burger King) e botão de retorno.

TelaLogin
Tela de login estilizada com animações FadeInUp. Permite retornar à tela inicial.

---

4. Pacotes Utilizados

| Pacote | Descrição |
|--------|------------|
| flutter/material.dart | Estrutura e widgets principais do app |
| animate_do | Biblioteca para animações visuais (FadeInUp) |
| myappluciano/pages/login.page.dart | Página de login externa |

---


5. Navegação Entre Telas

A navegação é feita com o uso da classe Navigator e do método push() para abrir novas telas  
e pop() para retornar.  

Exemplo de uso:

dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SegundaTela()),
);


---

 6. Cores e Estilo

- *Fundo predominante:* Preto (Color(0xff000000))  
- *Botões:* Vermelho (#ff0000), Cinza (#545353), Branco  
- *Tema:* Tons escuros para representar o clima de Halloween  

---

 7. Execução

1. Certifique-se de ter o *Flutter* instalado.  
2. No terminal, execute:
   bash
   flutter pub get
   flutter run
   
3. O aplicativo abrirá na tela inicial (*PrimeiraTela*).

---

8. Imagens

As imagens devem estar na pasta:


assets/images/


E devem estar declaradas no arquivo pubspec.yaml.

---

9. Autor e Observações

Projeto didático desenvolvido para prática de *navegação, layout e animação*.  
As telas e nomes são temáticos e servem para ilustrar o uso de rotas no Flutter.  

---
*Versão:* 1.0  
 *Propósito:* Aprendizado e prática de Flutter básico
