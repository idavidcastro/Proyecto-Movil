import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/modelo/vacante.dart';

class Bienvenida extends StatefulWidget {
  late final Function currentIndex;
  static String id = 'Bienvenida';

  @override
  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  final List _vacantes = listaVacantes;
  int _currentTabIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('INICIO'),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.white,
          body: ListView.builder(
              itemCount: _vacantes.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(_vacantes[index].titulo),
                      subtitle: Text(_vacantes[index].salario),
                      isThreeLine: true,
                    ),
                    const Divider()
                  ],
                );
              })),
    );
  }
}
