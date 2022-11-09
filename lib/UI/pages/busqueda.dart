import 'package:http/http.dart';
import 'package:flutter/material.dart';
import '../../domain/modelo/vacante.dart';

class PageBusqueda extends StatelessWidget {
  const PageBusqueda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('BUSQUEDA'),
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Icons.check),
          onPressed: () {},
        ),
        body: ListView(
          children: [
            _barraDeOpciones(),
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
                child: _vacante3(),
              ),
            ),
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
            child: Icon(Icons.check_box_outline_blank),
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
            child: Icon(Icons.check_box_outline_blank),
          )
        ],
      ),
    ],
  );
}

Widget _vacante3() {
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
                child: Text('Microsoft'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Ingeniero de Sistemas',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('6.000.000'),
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
            child: Icon(Icons.check_box_outline_blank),
          )
        ],
      ),
    ],
  );
}

Widget _barraDeOpciones() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      IconButton(
        iconSize: 25.0,
        icon: const Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        iconSize: 25.0,
        icon: const Icon(Icons.settings_input_composite_sharp),
        onPressed: () {},
      )
    ]),
  );
}
