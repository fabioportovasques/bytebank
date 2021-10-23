import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando Transferencia';
const _rotuloCampoValor = 'valor';
const _dicaCampoValor = '0.00';
const _rotuloCampoNumeroConta = 'Número Conta';
const _dicaCampoNumeroConta = '0000';
const _textoBotaoConfirmar = 'Confirmar';

class FormmularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormmularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController(); //atributo privado
  final TextEditingController _controladorCampoValor =
      TextEditingController(); //atributo privado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controlador: _controladorCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                rotulo: _rotuloCampoNumeroConta),
            Editor(
              controlador: _controladorCampoValor,
              dica: _dicaCampoValor,
              rotulo: _rotuloCampoValor,
              icone: Icons.monetization_on,
            ),
            TextField(),
            ElevatedButton(
              //botao
              child: Text(_textoBotaoConfirmar),
              onPressed: () => _criaTransferencia(context),
              //debugPrint('Clicou em confirmar');
              /*ter acesso ao conteudo do campo*/
              //debugPrint(_controladorCampoNumeroConta.text);
              //debugPrint(_controladorCampoValor.text);
              //debugPrint(_controladorCampoNumeroConta.text);
              //debugPrint(_controladorCampoValor.text);
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada =
          Transferencia(valor, numeroConta); //Instancia de transferencia
      Navigator.pop(context,
          transferenciaCriada); //Função que tira a tela da ilha de telas
    }
  }
}
