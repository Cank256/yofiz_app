
import 'package:flutter/rendering.dart';


class Gradients {
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment(1, 0),
    end: Alignment(0, 1),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 254, 193, 128),
      Color.fromARGB(255, 255, 137, 147),
    ],
  );
}