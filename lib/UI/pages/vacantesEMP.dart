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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('INICIO'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 8.0,
                    )
                  ],
                  //border: Border.all(color: Colors.black, width: 6.0)
                ),
                child: _vacante1(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 8.0,
                    )
                  ],
                  //border: Border.all(color: Colors.black, width: 6.0)
                ),
                child: _vacante2(),
              ),
            ),
          ],
        ),
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

Widget _vacante1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Apple'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Diseñador Gráfico',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('3.000.000'),
              ),
              // ignore: unnecessary_const
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 15.0,
                    ),
                    Text('Los Angeles, CA'),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.indeterminate_check_box),
          )
        ],
      ),
    ],
  );
}

Widget _vacante2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Grupo Aval'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Economista',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('2.000.000'),
              ),
              // ignore: unnecessary_const
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 15.0,
                    ),
                    Text('Bogotá, CO'),
                  ],
                ),
              )
            ],
          ),
          const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.indeterminate_check_box))
        ],
      ),
    ],
  );
}
