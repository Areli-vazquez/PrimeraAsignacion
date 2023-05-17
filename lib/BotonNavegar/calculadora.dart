import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class pagTres extends StatelessWidget {
  const pagTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calcu(),
    );
  }
}

class calcu extends StatefulWidget {
  const calcu({Key? key}) : super(key: key);

  @override
  State<calcu> createState() => _calcuState();
}

class _calcuState extends State<calcu> {

  String igual = "0";
  String result = "0";
  String expre = "";
  double igualFontSize = 38.0;
  double resultFontSize= 48.0;

  buttonPressed(String buttonText){
    setState(() {
      if(buttonText == "C"){
        igual="0";
        result="0";
        igualFontSize = 38.0;
        resultFontSize= 48.0;

      }else if(buttonText == "⌫"){
        igualFontSize = 48.0;
        resultFontSize= 38.0;
        igual = igual.substring(0, igual.length - 1);

        if(igual == ""){
          igual = "0";
        }
      }else if(buttonText == "="){
        igualFontSize = 38.0;
        resultFontSize= 48.0;
        expre = igual;
        expre = expre.replaceAll('×', '*');
        expre = expre.replaceAll('÷', '/');

        try{
          Parser p =  Parser();
          Expression exp = p.parse(expre);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }catch(e){
          result="Error";
        }

        }else {
        igualFontSize = 48.0;
        resultFontSize= 38.0;

        if (igual == "0") {
          igual = buttonText;
        } else {
          igual = igual + buttonText;
        }
      }
    });
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white,
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
          padding: EdgeInsets.all(16.0),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white
            ),
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(igual, style: TextStyle(fontSize: igualFontSize),),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Text(result, style: TextStyle(fontSize: resultFontSize),),
            ),
            Expanded(
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .75,
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            buildButton("C", 1, Colors.red),
                            buildButton("⌫", 1, Colors.blue),
                            buildButton("÷", 1, Colors.blue),
                          ]
                      ),
                      TableRow(
                          children: [
                            buildButton("7", 1, Colors.black54),
                            buildButton("8", 1, Colors.black54),
                            buildButton("9", 1, Colors.black54),
                          ]
                      ),
                      TableRow(
                          children: [
                            buildButton("4", 1, Colors.black54),
                            buildButton("5", 1, Colors.black54),
                            buildButton("6", 1, Colors.black54),
                          ]
                      ),
                      TableRow(
                          children: [
                            buildButton("1", 1, Colors.black54),
                            buildButton("2", 1, Colors.black54),
                            buildButton("3", 1, Colors.black54),
                          ]
                      ),
                      TableRow(
                          children: [
                            buildButton(".", 1, Colors.black54),
                            buildButton("0", 1, Colors.black54),
                            buildButton("00", 1, Colors.black54),
                          ]
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          buildButton("×", 1, Colors.deepPurpleAccent)
                        ]
                      ),
                      TableRow(
                          children: [
                            buildButton("-", 1, Colors.deepPurpleAccent)
                          ]
                      ),
                      TableRow(
                          children: [
                            buildButton("+", 1, Colors.deepPurpleAccent)
                          ]
                      ),
                      TableRow(
                          children: [
                            buildButton("=", 2, Colors.deepPurpleAccent)
                          ]
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}

