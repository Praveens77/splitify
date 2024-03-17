import 'package:flutter/material.dart';

const white = Color(0xffFFFFFF);
const black = Color(0xff000000);
const lightBlack = Colors.black54;
const blue = Color(0xff435AA1);
const grey = Color(0xff878787);

Widget customText(text, size, color, weight) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight
    ),
  );
}