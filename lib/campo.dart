import 'package:flutter/foundation.dart';
import 'explosion_exception.dart';

class Campo {
  final int linha;
  final int coluna;
  final List<Campo> vizinhos = [];

  bool _aberto = false;
  bool _marcado = false;
  bool _minado = false;
  bool _explodido = false;

  Campo ({
    required this.linha,
    required this.coluna,
});
  void adicionarVizinho(Campo vizinho) {

    final deltaLinha = (linha - vizinho.linha).abs();
    final deltaColuna = (coluna - vizinho.coluna).abs();

    if (deltaLinha == 0 && deltaColuna == 0) {
      return;
    }
    if (deltaLinha <= 1 && deltaColuna <= 1) {
      vizinhos.add(vizinho);
    }
  }

  void abrir() {
    if(_aberto) {
      return;
    }
    _aberto = true;

    if(_minado) {
      _explodido = true;
      throw ExplosionException();
    }
    if (vizinhacaSegura) {
      vizinhos.forEach((v) => v.abrir());
    }
  }

  bool get minado {
    return _minado;
  }

  bool get vizinhacaSegura {
    return vizinhos.every((v) => !v._minado);
  }
}