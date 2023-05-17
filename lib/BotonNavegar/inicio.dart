import 'package:flutter/material.dart';

class pagUno extends StatelessWidget {
  const pagUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/bnd.png',height: 300,),
            Center(
            ),
          ],
        ),
      ),
    );
  }
}