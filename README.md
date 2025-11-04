# CineMarques – Mobile App

**Disciplina:** Desenvolvimento Mobile (Aula 04)  
**Tema:** Navegação entre telas e animações no Flutter  

---

## Autores e Funções

| Nome | RA | Função | Descrição |
|------|-----|---------|------------|
| **Inácio Barbosa de Lima** | 2587078 | **Desenvolvedor Principal e Estrutura do Projeto** | Responsável pela configuração inicial do Flutter, criação do `main.dart`, definição do tema principal e integração entre as telas. |
| **Nadine Lima Marques** | 181434 | **Design e Estilo das Telas** | Desenvolveu o layout visual das telas, escolha das cores, botões e organização estética do app com foco no tema Halloween. |
| **Pedro Moural** | 2430266 | **Implementação da Navegação** | Criou e testou as rotas entre telas utilizando `Navigator.push()` e `Navigator.pop()`, garantindo fluidez na transição. |
| **Gabriel Canha** | 2408209 | **Integração de Animações (animate_do)** | Implementou as animações FadeInUp e outras transições suaves, aprimorando a experiência visual e a interação do usuário. |
| **Willian Saturnino** | 2444705 | **Desenvolvimento de Telas Secundárias e Funcionalidades Extras** | Criou telas como *Lanche*, *Em Cartaz* e *Tela de Botões*, além de testar a responsividade e o comportamento dos botões. |

---

## 1. Descrição Geral

O **CineMarques** é um aplicativo temático de Halloween desenvolvido em **Flutter**, com o objetivo de praticar:
- Navegação entre múltiplas telas  
- Uso de **animações (pacote `animate_do`)**  
- Criação de **interfaces interativas e responsivas**

O app simula um aplicativo de cinema com opções de filmes, compra de ingressos e lanches, explorando conceitos fundamentais do Flutter.

---

## 2. Estrutura Principal

- **`main()`** → Função principal que inicializa o app com a classe `MeuPrimeiroApp`.  
- **`MeuPrimeiroApp`** → Define o `MaterialApp`, o tema escuro e a tela inicial (*PrimeiraTela*).  

---

## 3. Funcionalidades

### PrimeiraTela  
Tela inicial com fundo preto e imagem principal, contendo três botões:  
- “CURTA O HALLOWEEN” → Navega para `SegundaTela()`  
- “COMPRE INGRESSOS” → Navega para `TerceiraTela()`  
- “COMPRE LANCHES” → Navega para `Lanche()`

---

### SegundaTela – Telefone Preto  
Exibe uma imagem temática e dois botões:
- Avançar → `QuintaTela()`  
- Voltar → `PrimeiraTela()`

---

### TerceiraTela – Em Cartaz  
Lista de filmes disponíveis com várias imagens e botão “Voltar”.

---

### QuartaTela – Tela de Botões  
Demonstração prática de diferentes tipos de botões Flutter:  
`ElevatedButton`, `TextButton`, `OutlinedButton`, `IconButton` e `FloatingActionButton`.

---

### QuintaTela – Sexta-Feira 13  
Mostra a imagem do filme e permite navegar para `SextaTela()` ou voltar.

---

### SextaTela – O Exorcista  
Exibe imagem temática com navegação para `SetimaTela()` ou retorno à anterior.

---

### SetimaTela – It: A Coisa  
Última tela da sequência de filmes, com botão de retorno.

---

### Lanche  
Tela com opções de fast food (*McDonald’s* e *Burger King*), simulando a compra de lanches, com botão de retorno.

---

### TelaLogin  
Tela de login estilizada com **animações FadeInUp** do pacote `animate_do`.  
Possui campos de usuário e senha, além da opção de voltar à tela inicial.

---

## 4. Pacotes Utilizados

| Pacote | Descrição |
|--------|------------|
| `flutter/material.dart` | Estrutura e widgets principais do Flutter |
| `animate_do` | Biblioteca de animações (FadeInUp, FadeIn, ZoomIn etc.) |
| `myappluciano/pages/login.page.dart` | Importação da tela de login externa |

---

## 5. Navegação Entre Telas

A navegação é feita através da classe **`Navigator`**, utilizando:
- **`push()`** → Abre uma nova tela  
- **`pop()`** → Retorna à tela anterior  

**Exemplo:**

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SegundaTela()),
);
