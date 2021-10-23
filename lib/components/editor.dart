//classe para o editor
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
//Criação dos atributos privados

  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final IconData? icone;

  Editor({this.controlador, this.rotulo, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador, //atributo privado
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null, //remove o espaço em branco
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number, //coloca teclado numérico
      ),
    );
  }
}
