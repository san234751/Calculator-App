import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;
  const CalcButton({
    Key? key,
    this.text = '1',
    this.fillcolor = 1,
    this.textcolor = 1,
    this.textsize = 1.5,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
          width: 70,
          height: 60,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(text),
            onPressed: () => callback(text),
            color: Color(fillcolor),
            textColor: Color(textcolor),
          )),
    );
  }
}
