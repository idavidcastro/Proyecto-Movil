import 'package:flutter/material.dart';

import 'login.dart';

class PageConfig2 extends StatefulWidget {
  const PageConfig2({Key? key}) : super(key: key);

  @override
  State<PageConfig2> createState() => _PageConfig2State();
}

class _PageConfig2State extends State<PageConfig2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('PERFIL'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://robovent.com/es/wp-content/uploads/blue-AutomotiveCalc_2018-background.jpg"),
              ),
              const Divider(),
              const Text('Información Personal:',
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              const Divider(),
              const Text(
                'Nombres: Andrés Felipe',
                textAlign: TextAlign.left,
              ),
              const Text('Apellidos: Calderon'),
              const Text('Ciudad: Valledupar'),
              const Text('Edad: 22'),
              const Divider(),
              const Text('Información Académica:',
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              const Divider(),
              const Text(
                'Nombres: Iván David',
                textAlign: TextAlign.left,
              ),
              const Text('Apellidos: Castro Blanco'),
              const Text('Ciudad: Valledupar'),
              const Text('Edad: 22'),
              const Divider(),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: const Text(
                        'Modificar',
                      ),
                      onPressed: () {}),
                  RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: const Text(
                        'Cerrar Sesión',
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const Login()),
                        );
                      }),
                ],
              )
            ]),
          ),
        ));
  }
}
