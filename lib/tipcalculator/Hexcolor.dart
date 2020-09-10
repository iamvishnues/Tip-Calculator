import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Hexcolor extends Color {
  static int _getColorfromHex(String hexcolor) {
    hexcolor = hexcolor.toUpperCase().replaceAll("#", "");
    if (hexcolor.length == 6) hexcolor = "FF" + hexcolor;
    return int.parse(hexcolor, radix: 16);
  }

  Hexcolor(final String hexcolor) : super(_getColorfromHex(hexcolor)) {}
}
