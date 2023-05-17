import 'package:flutter/material.dart';
import 'package:proyectouno/BotonNavegar/rutas.dart';
import 'dart:math';
import 'package:proyectouno/pantallaInicio.dart';
import 'BotonNavegar/bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//desaparecer la bandita roja
      title: 'Pagiminion',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
     home: pantallaInicio(),
     //home: const MyHomePage(title: 'Proyecto de asignaciones'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  BottomNav ?myBottomNav;

  @override
  void initState() {
    
    myBottomNav = BottomNav(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBottomNav,//llamamos a bottonNav
      body: routes(index: index),
      appBar: AppBar(
        title: Text(widget.title),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
