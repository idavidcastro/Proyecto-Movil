import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/vacantes.dart';
import 'package:proyectomovil/UI/pages/busqueda.dart';
import 'package:proyectomovil/UI/pages/config.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const PageBusqueda(),
      Bienvenida(),
      const PageConfig()
    ];
    return myList[index];
  }
}
