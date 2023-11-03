import 'package:flutter/material.dart';

class AppDimensions {

  //Obtener el ancho total de la pantalla del dispositivo
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //Obtener el alto total de la pantalla del dispositivo
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}