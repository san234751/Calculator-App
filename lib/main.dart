import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/Calc_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstnum = 0;
  int secondnum = 0;
  String history = '';
  String texttodisplay = '';
  String res = '';
  String operation = '';
  void buttononclick(String btnVal) {
    if (btnVal == 'C') {
      texttodisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/' ||
        btnVal == '^') {
      firstnum = int.parse(texttodisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '+/-') {
      if (texttodisplay[0] != '-') {
        res = '-' + texttodisplay;
      } else {
        res = texttodisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = texttodisplay.substring(0, texttodisplay.length - 1);
    } else if (btnVal == '=') {
      secondnum = int.parse(texttodisplay);
      if (operation == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'x') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '^') {
        res = pow(firstnum, secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(texttodisplay + btnVal).toString();
    }
    setState(() {
      texttodisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Calculator'),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0x66FFFFFF),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    texttodisplay,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 44,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: 'C',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '<',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: 'x',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '/',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '9',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '8',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '7',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '^',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '6',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '5',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '4',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '+',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '3',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '2',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '1',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '-',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '+/-',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '0',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '00',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                  CalcButton(
                    text: '=',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    callback: buttononclick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
