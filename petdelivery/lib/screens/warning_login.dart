import 'package:flutter/material.dart';

class WarningLogin extends StatefulWidget {
  @override
  _WarningLogin createState() => _WarningLogin();
}

class _WarningLogin extends State<WarningLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Você não está logado"),
      ),
      floatingActionButton: FlatButton(
        child: Text("Criar conta"),
      ),
    );
  }
}
