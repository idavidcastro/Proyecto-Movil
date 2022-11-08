import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/app.dart';

import '../../domain/modelo/models.dart';
import 'bienvenidaEMP.dart';
import 'crear.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final List<Usuario> _usuario = listaUsuario;
  TextEditingController controllerusuario = TextEditingController();
  TextEditingController controllercontrasena = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.black,
            ),
          ),
          body: ListView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 200),
              children: <Widget>[
                const SizedBox(
                  height: 15.0,
                ),
                _nombre(),
                _userTextField(),
                const SizedBox(
                  height: 15,
                ),
                _passwordTextField(),
                const SizedBox(
                  height: 20.0,
                ),
                _bottonlogin(),
                _bottonlibre(),
                _bottonRegistrar(),
                _texto1(),
              ])),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: controllerusuario,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Usuario',
              labelText: 'Usuario',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            controller: controllercontrasena,
            decoration: const InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'Contraseña',
              labelText: 'Contraseña',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _bottonlogin() {
    // ignore: prefer_const_constructors
    return RaisedButton(
      // ignore: sort_child_properties_last
      child: FlatButton(
        onPressed: () {
          if (controllerusuario.text == 'empleador') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Home2()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Home()),
            );
          }
        },
        child: const Text('Iniciar sesion',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 50.0,
      color: Colors.black,
      onPressed: () {},
    );
  }
}

Widget _bottonlibre() {
  return RaisedButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: () {});
}

Widget _bottonRegistrar() {
  // ignore: prefer_const_constructors
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
          child: const Text('Registrar',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 50.0,
        color: Colors.black,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const AdicionarUsuario()));
        });
  });
}

Widget _nombre() {
  return const Text(
    "Iniciar Sesion",
    style: const TextStyle(
        color: Colors.black, fontSize: 60.0, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget _texto1() {
  return const Text(
    "¿Olvidaste tu contraseña?",
    style: const TextStyle(
        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
