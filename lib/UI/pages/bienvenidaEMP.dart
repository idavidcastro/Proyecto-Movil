import 'package:flutter/material.dart';
import '../../domain/modelo/vacante.dart';
import 'crearVacanteEMP.dart';

class ListaPrincipalEmpreador extends StatefulWidget {
  const ListaPrincipalEmpreador({Key? key}) : super(key: key);

  @override
  State<ListaPrincipalEmpreador> createState() =>
      _ListaPrincipalEmpreadorState();
}

class _ListaPrincipalEmpreadorState extends State<ListaPrincipalEmpreador> {
  final List _vacantes = listaVacantes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('VACANTES'),
      ),
      body: ListView.builder(
          itemCount: _vacantes.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                _eliminarvacantes(context, _vacantes[0]);
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AdicionarVacantes(
                        gestionvacante: _vacantes[index]), //Llamar la Vista
                  ),
                ).then((resultado) //Espera por un Resultado
                    {
                  if (resultado != null) {
                    _vacantes[index] = resultado[
                        0]; //Adiciona a la lista lo que recupera de la vista TextoEjercicio
                    setState(() {});
                  }
                });
              },
              title: Text(_vacantes[index].titulo),
              subtitle: Text(_vacantes[index].descripcion),
              isThreeLine: true,
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AdicionarVacantes(
                  gestionvacante: Vacante(
                      titulo: '',
                      descripcion: '',
                      salario: '',
                      ciudad: '')), //Llamar la Vista
            ),
          ).then((resultado) //Espera por un Resultado
              {
            if (resultado != null) {
              _vacantes.addAll(
                  resultado); //Adiciona a la lista lo que recupera de la vista TextoEjercicio
              setState(() {});
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _eliminarvacantes(context, Vacante vacante) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Eliminar Vacante'),
              content: Text(
                  'Desea realmente eliminar la vacante:  ${vacante.titulo}'),
              actions: [
                TextButton(
                    onPressed: () {
                      _vacantes.remove(vacante);
                      setState(() {});
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Eliminar',
                      style: TextStyle(color: Colors.red),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ));
  }
}
