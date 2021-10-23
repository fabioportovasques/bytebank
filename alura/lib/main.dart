import 'package:alura/screens/dashboard.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Bytebank());
  //save(Contact(0,'Fábio Geovane Porto Vasques', 1001));
  //findAll().then((contacts) => debugPrint(contacts.toString()));
  //});
  //save(Transaction(200.0,Contact(0,'teste', 5100))).then((transaction) => print(transaction));
  //findAll().then((transactions) => print('new transactions $transactions'));
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green[900],
            accentColor: Colors.blueAccent[700],
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary,
            )),
        home: Dashboard());
  }
}
