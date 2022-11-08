import 'package:flutter/material.dart';

import '../../domain/modelo/vacante.dart';

class PageBusqueda extends StatefulWidget {
  const PageBusqueda({Key? key}) : super(key: key);

  @override
  State<PageBusqueda> createState() => _PageBusquedaState();
}

class _PageBusquedaState extends State<PageBusqueda> {
  final List _vacantes = listaVacantes;
  var menuCategoria = ['Auxiliar', 'Asesor', 'Gerente'];
  String btnSeleccionado = 'Auxiliar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BUSQUEDA'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: _vacantes.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(_vacantes[index].titulo),
                  subtitle: Text(_vacantes[index].descripcion),
                  isThreeLine: true,
                ),
                Text(
                  _vacantes[index].salario,
                  textAlign: TextAlign.start,
                )
              ],
            );
          }),
    );
  }
}
