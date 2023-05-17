import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function currentIndex;
  const BottomNav({Key? key,required this.currentIndex}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0; //index de donde queremos que empiece seleccionado el BottonNAV
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index, // manda a llamar en donde inicia el seleccionador
      onTap: (int i){//mandamos a llamar al index para que se pueda cambiar el seleccionador
        setState(() {
          index = i; // para poder cambiar de pag
          widget.currentIndex(i);
        });
        },
        type: BottomNavigationBarType.fixed, // para que quepan más de 2 botones en el bottonNav
        selectedItemColor: Colors.purple, //color del seleccionador del icon
        iconSize: 25.0, // tamaño del icon
        selectedFontSize: 14.0, //tamaño de la letra del icon seleccionado
        unselectedFontSize: 12.0, //tamaño de lectra del icon sin seleccionar
        items: const[ //descripción e iconos que se agregan
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Registro'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'calculadora'
          ),
        ]
    );
  }
}
