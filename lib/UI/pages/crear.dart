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
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            _titulo(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: controltipousuario,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Tipo Usuario',
                    labelText: 'Tipo Usuario',
                    icon: const Icon(Icons.person),
                    // suffix: Icon(Icons.access_alarm),
                    suffix: GestureDetector(
                      child: const Icon(Icons.person),
                      onTap: () {
                        controltipousuario.clear();
                      },
                    )
                    //probar suffix
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: controlusuario,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Usuario',
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
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: controlcontrasena,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Contraseña',
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
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: controlcorreoelectronico,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Correo electronico',
                    labelText: 'Correo electronico',
                    icon: const Icon(Icons.message),
                    // suffix: Icon(Icons.access_alarm),
                    suffix: GestureDetector(
                      child: const Icon(Icons.message),
                      onTap: () {
                        controlcorreoelectronico.clear();
                      },
                    )
                    //probar suffix
                    ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                'REGISTRARSE',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),

              //Paso # 3
              //En el Boton Enviar Datos
              style: ElevatedButton.styleFrom(primary: Colors.black),
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

                  // Devuelvo los datos de la lista _clientesadd
                  /*
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ListarUsuario())); //Llamar la Vista
                  */
                }
              },
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
    return const Text(
      "Registrarse",
      style: const TextStyle(
          color: Colors.black, fontSize: 60.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}