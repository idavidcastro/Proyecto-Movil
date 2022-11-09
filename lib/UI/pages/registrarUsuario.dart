import 'package:flutter/material.dart';

import '../../domain/modelo/models.dart';

class AdicionarUsuario extends StatefulWidget {
  const AdicionarUsuario({Globalkey});
  @override
  State<AdicionarUsuario> createState() => _AdicionarUsuarioState();
}

class _AdicionarUsuarioState extends State<AdicionarUsuario> {
  final List<Usuario> _usuarioadd = [];
  TextEditingController controlusuario = TextEditingController();
  TextEditingController controlcontrasena = TextEditingController();
  TextEditingController controltipousuario = TextEditingController();
  TextEditingController controlcorreoelectronico = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('NUEVO USUARIO'),
        ),
        body: Column(
          children: [
            _titulo(),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: TextField(
                controller: controltipousuario,
                decoration: InputDecoration(
                    filled: true,
                    //hintText: 'Tipo Usuario',
                    labelText: 'Tipo Usuario',
                    icon: const Icon(Icons.person),
                    // suffix: Icon(Icons.access_alarm),
                    suffix: GestureDetector(
                      child: const Icon(Icons.close),
                      onTap: () {
                        controltipousuario.clear();
                      },
                    )
                    //probar suffix
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: TextField(
                controller: controlusuario,
                decoration: InputDecoration(
                    filled: true,
                    labelText: 'Usuario',
                    icon: const Icon(Icons.person),
                    // suffix: Icon(Icons.access_alarm),
                    suffix: GestureDetector(
                      child: const Icon(Icons.close),
                      onTap: () {
                        controlusuario.clear();
                      },
                    )
                    //probar suffix
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: TextField(
                controller: controlcontrasena,
                decoration: InputDecoration(
                    filled: true,
                    labelText: 'Contraseña',
                    icon: const Icon(Icons.lock),
                    // suffix: Icon(Icons.access_alarm),
                    suffix: GestureDetector(
                      child: const Icon(Icons.close),
                      onTap: () {
                        controlcontrasena.clear();
                      },
                    )
                    //probar suffix
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: TextField(
                controller: controlcorreoelectronico,
                decoration: InputDecoration(
                    filled: true,
                    labelText: 'Correo electronico',
                    icon: const Icon(Icons.message),
                    // suffix: Icon(Icons.access_alarm),
                    suffix: GestureDetector(
                      child: const Icon(Icons.close),
                      onTap: () {
                        controlcorreoelectronico.clear();
                      },
                    )
                    //probar suffix
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: RaisedButton(
                elevation: 10.0,
                onPressed: () {
                  if (controltipousuario.text.isNotEmpty &&
                      controlusuario.text.isNotEmpty &&
                      controlcontrasena.text.isNotEmpty &&
                      controlcorreoelectronico.text.isNotEmpty) {
                    // Agregar a la lista los valores de cada texto

                    listaUsuario.add(Usuario(
                        tipo_usuario: controltipousuario.text,
                        usuarioo: controlusuario.text,
                        contrasena: controlcontrasena.text,
                        correo_electronico: controlcorreoelectronico.text));

                    // Devuelvo los datos de la lista _usuarioadd
                    /*
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ListarUsuario())); //Llamar la Vista
                    */
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
                  'Registrar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _contrasena() {
    var controlcontrasena;
    return TextField(
      onChanged: controlcontrasena,
      controller: controlcontrasena,
    );
  }

  Widget _titulo() {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Text(
        "Registrarse",
        style: TextStyle(
            color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
