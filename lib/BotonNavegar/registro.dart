import 'package:flutter/material.dart';

class pagDos extends StatelessWidget {
  const pagDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text("Registro", style:TextStyle(fontSize: 25)),
        const SizedBox(
          height: 50,
        ),
        _nombre(),
        SizedBox(
          height: 10,
        ),
        _correo()
      ],
    );
  }

  Container _nombre() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.purple)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
              hintText: "Nombre completo",
              border: InputBorder.none),
        ));
  }
  Container _correo() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.purple)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
              hintText: "Correo electrónico",
              border: InputBorder.none),
        ));
  }
}
