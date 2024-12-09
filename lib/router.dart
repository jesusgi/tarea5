import 'package:clase23/viws/Calculadora.dart';
import 'package:clase23/viws/home.dart';
import 'package:clase23/viws/quienesomos.dart';
import 'package:clase23/viws/servicios.dart';
import 'package:flutter/material.dart';
import 'package:clase23/viws/contactos.dart';

class Routes {
  //*nombre de la ruta
  static const String home = '/';
  static const String quienesSomos = '/quienesSomos';
  static const String servicios = '/servicios';
  static const String calculadora = '/calculadora';
  static const String contacto = '/contacto';
  //*enlaces a las rutas
  static Map<String, WidgetBuilder> get routes => {
        home: (context) => const Home(),
        quienesSomos: (context) => const QuienesSomos(),
        servicios: (context) => const Servicios(),
        calculadora: (context) => const Calculadora(),
        contacto: (context) => const Contactos(),
      };
}
