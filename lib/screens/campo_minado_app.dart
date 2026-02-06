import 'package:campo_minado/components/tabuleiro_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/resultado_widget.dart';
import '../models/campo.dart';
import '../models/explosion_exception.dart';
import '../models/tabuleiro.dart';

class CampoMinadoApp extends StatefulWidget {
  @override
  _CampoMinadoAppState createState() => _CampoMinadoAppState();
}

class _CampoMinadoAppState extends State<CampoMinadoApp> {

  bool? _venceu;
  Tabuleiro? _tabuleiro;

  @override
  void initState() {
    super.initState();

  }

  void _reiniciar() {
    setState(() {
      _venceu = null;
      _tabuleiro = null;
    });
  }

  void _abrir(Campo campo) {
    if(_venceu != null) {
      return;
    }
    setState(() {
      try {
        campo.abrir();
        if (_tabuleiro!.resolvido) {
          _venceu = true;
        }
      } on ExplosionException {
        _venceu = false;
        _tabuleiro!.revelarBomba();
      }
    });
  }

  void _alternarMarcacao(Campo campo) {
    if(_venceu != null) {
      return;
    }
    setState(() {
      campo.alternarMarcacao();
      if (_tabuleiro!.resolvido) {
        _venceu = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: _venceu,
          onReiniciar: _reiniciar,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {

            if (_tabuleiro == null) {
              int qtdeColunas = 15;
              double tamanhoCampo = constraints.maxWidth / qtdeColunas;
              int qtdeLinhas = (constraints.maxHeight / tamanhoCampo).floor();

              int totalCampos = qtdeLinhas * qtdeColunas;
              int qtdeBombas = (totalCampos * 0.18).floor();

              _tabuleiro = Tabuleiro(
                linhas: qtdeLinhas,
                colunas: qtdeColunas,
                qtdeBombas: qtdeBombas,
              );
            }

            return TabuleiroWidgets(
                tabuleiro: _tabuleiro!,
                onAbrir: _abrir,
                onAlternarMarcacao: _alternarMarcacao);
          },
        ),
      ),
    );
  }
}
