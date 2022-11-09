import 'package:flutter/material.dart';

import '../../domain/modelo/vacante.dart';
import 'widget.dart';

class AdicionarVacantes extends StatefulWidget {
  const AdicionarVacantes({Key? key}) : super(key: key);

  @override
  State<AdicionarVacantes> createState() => _AdicionarVacantesState();
}

class _AdicionarVacantesState extends State<AdicionarVacantes> {
  List<Vacante> _vacanteAdd = [];
  TextEditingController controlEmpresa = TextEditingController();
  TextEditingController controlCargo = TextEditingController();
  TextEditingController controlSalario = TextEditingController();
  TextEditingController controlCiudad = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('NUEVA VACANTE'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
            child: Textos(
              controlartextos: controlEmpresa,
              etiqueta: 'Empresa',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Textos(
              controlartextos: controlCargo,
              etiqueta: 'Cargo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Textos(
              controlartextos: controlSalario,
              etiqueta: 'Salario',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Textos(
              controlartextos: controlCiudad,
              etiqueta: 'Ciudad',
            ),
          ),
          // Boton
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: RaisedButton(
              elevation: 10.0,
              onPressed: () {
                if (controlEmpresa.text.isNotEmpty &&
                    controlCargo.text.isNotEmpty &&
                    controlSalario.text.isNotEmpty &&
                    controlCiudad.text.isEmpty) {
                  // Agregar a la lista los valores de cada texto

                  _vacanteAdd.add(Vacante(
                      titulo: controlEmpresa.text,
                      descripcion: controlCargo.text,
                      salario: controlSalario.text,
                      ciudad: controlCiudad.text));

                  // Devuelvo los datos de la lista _clientesadd

                  //Navigator.pop(context, _vacanteAdd);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              highlightElevation: 20.0,
              color: Colors.black,
              textColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: const Text(
                'Crear Nueva Vacante',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
