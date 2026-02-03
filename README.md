# 💣 Campo Minado - Flutter & Dart

Um projeto de jogo de Campo Minado clássico, desenvolvido com **Flutter** para dispositivos mobile. O foco deste projeto é aplicar conceitos de lógica de programação, orientação a objetos e tratamento de exceções customizadas em **Dart**.

> ⚠️ **Status do Projeto:** Em construção 🏗️

---

## 🚀 O que já foi implementado
* **Modelo de Dados (`Campo`):** Lógica inicial para identificação de vizinhos e posicionamento em grade (linha/coluna).
* **Tratamento de Erros:** Criação da `ExplosionException` para gerenciar o estado de derrota quando o usuário clica em uma bomba.
* **Configuração de Ambiente:** Projeto configurado para rodar em dispositivos Android através do Flutter SDK.

---

## 🛠️ Tecnologias Utilizadas
* **Dart:** Linguagem principal para a lógica de negócio.
* **Flutter:** Framework para a interface de usuário (UI).
* **Android Studio:** Ambiente de desenvolvimento (IDE).

---

## 📋 Próximos Passos (Roadmap)
- [ ] Implementar a lógica de abrir um campo e expansão automática de vizinhos vazios.
- [ ] Criar o tabuleiro dinâmico que gera minas aleatoriamente.
- [ ] Desenvolver a interface visual com `GridView` e ícones.
- [ ] Adicionar contador de bombas restantes.

---

## ⚙️ Como rodar o projeto
Para rodar este projeto localmente, você precisará do Flutter instalado em sua máquina.

1. Clone o repositório:
   ```bash
   git clone [https://github.com/seu-usuario/campo-minado.git](https://github.com/seu-usuario/campo-minado.git)

Navegue até a pasta do projeto e baixe as dependências:

2.Bash
flutter pub get
Inicie o emulador (ou conecte seu celular) e execute:

3.Bash
flutter run
📝 Licença
Este projeto está sob a licença MIT.
