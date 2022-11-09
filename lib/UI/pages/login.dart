import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/app.dart';
import '../../domain/modelo/models.dart';
import 'vacantesEMP.dart';
import 'registrarUsuario.dart';

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
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: _nombre(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _userTextField(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _passwordTextField(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            child: _bottonlogin(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _bottonRegistrar(),
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: _olvido(),
          )
        ]),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            controller: controllerusuario,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
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
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            controller: controllercontrasena,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
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

Widget _olvido() {
  return const Text(
    "¿Olvidaste tu contraseña?",
    style: TextStyle(
        color: Colors.grey,
        fontSize: 20.0,
        decoration: TextDecoration.underline),
    textAlign: TextAlign.center,
  );
}
