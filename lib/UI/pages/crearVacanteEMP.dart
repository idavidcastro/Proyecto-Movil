import 'package:flutter/material.dart';

import '../../domain/modelo/vacante.dart';
import 'widget.dart';

class AdicionarVacantes extends StatefulWidget {
  final Vacante gestionvacante;
  const AdicionarVacantes({super.key, required this.gestionvacante});

  @override
  State<AdicionarVacantes> createState() => _AdicionarVacantesState();
}

class _AdicionarVacantesState extends State<AdicionarVacantes> {
  List<Vacante> _vacanteAdd = [];
  TextEditingController controltitulo = TextEditingController();
  TextEditingController controldescripcion = TextEditingController();
  TextEditingController controlsalario = TextEditingController();
  TextEditingController controlciudad = TextEditingController();

  @override
  void initState() {
    controltitulo.text = widget.gestionvacante.titulo;
    controldescripcion.text = widget.gestionvacante.descripcion;
    controlsalario.text = widget.gestionvacante.salario;
    controlciudad.text = widget.gestionvacante.ciudad;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('NUEVA VACANTE')),
      body: Column(
        children: [
          Textos(
            controlartextos: controltitulo,
            etiqueta: 'Titulo',
          ),
          Textos(
            controlartextos: controldescripcion,
            etiqueta: 'Descripción',
          ),
          Textos(
            controlartextos: controlsalario,
            etiqueta: 'Salario',
          ),
          Textos(
            controlartextos: controlciudad,
            etiqueta: 'Ciudad',
          ),
          // Boton
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              if (controltitulo.text.isNotEmpty &&
                  controldescripcion.text.isNotEmpty &&
                  controlsalario.text.isNotEmpty &&
                  controlciudad.text.isEmpty) {
                // Agregar a la lista los valores de cada texto

                _vacanteAdd.add(Vacante(
                    titulo: controltitulo.text,
                    descripcion: controldescripcion.text,
                    salario: controlsalario.text,
                    ciudad: controlciudad.text));

                // Devuelvo los datos de la lista _clientesadd

                Navigator.pop(context, _vacanteAdd);
              }
            },
            child: const Text('Guardar Datos'),
          ),
        ],
      ),
    );
  }
}
