# Campo Minado com Flutter

Um jogo clássico de Campo Minado desenvolvido com Flutter, apresentando um design responsivo e uma jogabilidade fluida.

## ✨ Funcionalidades

- **Tabuleiro Dinâmico:** O tabuleiro se ajusta automaticamente ao tamanho da tela, proporcionando uma ótima experiência em qualquer dispositivo.
- **Dificuldade Balanceada:** A quantidade de bombas é calculada dinamicamente como uma porcentagem do total de campos (18%), garantindo um desafio consistente.
- **Abertura Recursiva:** Ao clicar em um campo vazio, todos os campos vizinhos seguros são abertos automaticamente.
- **Interface Reativa:** A barra de status muda de cor e ícone para indicar o estado atual do jogo (em andamento, vitória ou derrota).
- **Controles Intuitivos:**
  - **Toque Curto:** Para abrir um campo.
  - **Toque Longo:** Para marcar ou desmarcar um campo com uma bandeira.

## 🚀 Como Executar

Para rodar este projeto localmente, siga os passos abaixo.

**Pré-requisitos:**
- Ter o [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado.

**Passos:**

1. **Clone o repositório:**
   ```sh
   git clone <url-do-seu-repositorio>
   ```

2. **Navegue até o diretório do projeto:**
   ```sh
   cd campo_minado
   ```

3. **Instale as dependências:**
   ```sh
   flutter pub get
   ```

4. **Execute o aplicativo:**
   ```sh
   flutter run
   ```

## 🛠️ Tecnologias Utilizadas

- **Flutter:** Framework para desenvolvimento de aplicações multiplataforma.
- **Dart:** Linguagem de programação utilizada pelo Flutter.

---

Desenvolvido com base em um projeto de aprendizado para aprimorar conceitos de estado, UI e lógica de jogos com Flutter.
