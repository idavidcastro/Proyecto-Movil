import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/cofigEMP.dart';

import 'vacantesEMP.dart';
import 'crearVacanteEMP.dart';

class Routes2 extends StatelessWidget {
  final int index;
  const Routes2({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const AdicionarVacantes(),
      const ListaPrincipalEmpreador(),
      const PageConfig2()
    ];
    return myList[index];
  }
}
