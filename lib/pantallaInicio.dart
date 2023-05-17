import 'package:flutter/material.dart';
import 'package:proyectouno/main.dart';

class pantallaInicio extends StatefulWidget {
  const pantallaInicio({Key? key}) : super(key: key);

  @override
  State<pantallaInicio> createState() => _pantallaInicioState();
}

class _pantallaInicioState extends State<pantallaInicio> {

  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 1500),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'Primera asignación'),
            ),
        ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Image.asset('assets/icon.png',height: 300,),
          const SizedBox(height: 30,),
          Center(
          ),
          Spacer(),
          CircularProgressIndicator(),
          Spacer(),
          const Text(
            'Bienvenido', style:TextStyle(fontSize: 25),
          ),
           ],
        ),
      ),
    );
  }
}
