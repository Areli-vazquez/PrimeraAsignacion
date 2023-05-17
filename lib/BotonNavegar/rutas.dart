import 'package:flutter/material.dart';
import 'package:proyectouno/BotonNavegar/calculadora.dart';
import 'package:proyectouno/BotonNavegar/inicio.dart';
import 'package:proyectouno/BotonNavegar/registro.dart';

class routes extends StatelessWidget {
  final int index;
  const routes({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const pagUno(),
      const pagDos(),
      const pagTres(),
    ];
    return myList[index];
  }
}
