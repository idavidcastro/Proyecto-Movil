// ignore_for_file: deprecated_member_use

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              _titulo(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
                child: TextField(
                  controller: controlEmpresa,
                  decoration: InputDecoration(
                      filled: true,
                      //hintText: 'Tipo Usuario',
                      labelText: 'Empresa',
                      icon: const Icon(Icons.business),
                      // suffix: Icon(Icons.access_alarm),
                      suffix: GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          controlEmpresa.clear();
                        },
                      )
                      //probar suffix
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: TextField(
                  controller: controlCargo,
                  decoration: InputDecoration(
                      filled: true,
                      labelText: 'Cargo',
                      icon: const Icon(Icons.person),
                      // suffix: Icon(Icons.access_alarm),
                      suffix: GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          controlCargo.clear();
                        },
                      )
                      //probar suffix
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: TextField(
                  controller: controlSalario,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      labelText: 'Salario',
                      icon: const Icon(Icons.attach_money),
                      // suffix: Icon(Icons.access_alarm),
                      suffix: GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          controlSalario.clear();
                        },
                      )
                      //probar suffix
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: TextField(
                  controller: controlCiudad,
                  decoration: InputDecoration(
                      filled: true,
                      labelText: 'Ciudad',
                      icon: const Icon(Icons.location_on),
                      // suffix: Icon(Icons.access_alarm),
                      suffix: GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          controlCiudad.clear();
                        },
                      )
                      //probar suffix
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: MaterialButton(
                  elevation: 10.0,
                  onPressed: () {
                    if (controlEmpresa.text.isNotEmpty &&
                        controlCargo.text.isNotEmpty &&
                        controlSalario.text.isNotEmpty &&
                        controlCiudad.text.isNotEmpty) {
                      // Agregar a la lista los valores de cada texto

                      _vacanteAdd.add(Vacante(
                          empresa: controlEmpresa.text,
                          cargo: controlCargo.text,
                          salario: controlSalario.text,
                          ciudad: controlCiudad.text));

                      // dialogo
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Nueva Vacante'),
                                content:
                                    const Text('Se ha creado correctamente.'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        _limpiar();
                                        setState(() {});
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              ));
                      // Devuelvo los datos de la lista _usuarioadd
                      /*
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ListarUsuario())); //Llamar la Vista
                      */
                    } else {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Error'),
                                content: const Text('Registre los campos'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        _limpiar();
                                        setState(() {});
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              ));
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  highlightElevation: 20.0,
                  color: Colors.black,
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: const Text(
                    'Crear Vacante',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  _limpiar() {
    controlEmpresa.text = '';
    controlCargo.text = '';
    controlSalario.text = '';
    controlCiudad.text = '';
  }

  Widget _titulo() {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Text(
        "Nueva Vacante",
        style: TextStyle(
            color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
