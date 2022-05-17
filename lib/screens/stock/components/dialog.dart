
import 'package:flutter/material.dart';


showAlertDialog1(BuildContext context) 
{ 
    // configura o button
  Widget noButton = FlatButton(
    child: Text("Não"),
    onPressed: () {
      Navigator.pop(context);
     },
  );

  Widget yesButton = FlatButton(
    child: Text("Sim"),
    onPressed: () {
      Navigator.pop(context);
     },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
  
    title: const Text("Informação"),
    content: const Text("Deseja Apagar este item?"),
    actions: [
     Row(
       children: [
          yesButton,
          noButton,
       ],
     )
    ],
  );
  // exibe o dialog
  showDialog(
    barrierDismissible: false,useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        child: alerta, 
        onWillPop: () => Future.value(false));
    },
  );
}