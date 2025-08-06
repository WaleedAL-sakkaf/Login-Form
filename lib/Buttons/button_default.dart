import 'package:flutter/material.dart';
import 'package:login_form/Login/Login_Screen.dart';

Color? button_Color = Colors.blueGrey[700];
var email = TextEditingController();
var passowrd = TextEditingController();
var person = TextEditingController();
Widget defaultButton({
  Color? button_Color = Colors.blueGrey,
  double width = double.infinity,
  required String? text,
  required Function function,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: button_Color,
    ),
    width: double.infinity,
    child: MaterialButton(
      onPressed: () => function(),
      child: Text(
        "$text",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      textColor: Colors.white,
    ),
  );
}

