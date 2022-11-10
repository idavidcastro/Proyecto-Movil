// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/app.dart';
import '../../domain/modelo/usuario.dart';
import 'recuperPsswd.dart';
import 'vacantesEMP.dart';
import 'registrarUsuario.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final List<Usuario> _usuarios = listaUsuarios;
  TextEditingController controllerusuario = TextEditingController();
  TextEditingController controllercontrasena = TextEditingController();
  TextEditingController controllertipouser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
              child: _olvido(),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const RecuperarPsswd()));
                },
                icon: const Icon(Icons.email),
                iconSize: 40.0,
              ),
            )
          ]),
        ),
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
        child: TextFormField(
            /////AQUI
            cursorColor: Colors.black,
            keyboardType: TextInputType.number,
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
          String user = controllerusuario.text;
          String password = controllercontrasena.text;
          bool validacion = false;

          if (user.isNotEmpty && password.isNotEmpty) {
            for (var item in _usuarios) {
              if (item.usuario == user && item.contrasena == password) {
                validacion = true;
                if (item.tipo_usuario == 'Empleado') {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Home()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Home2()));
                }
              }
            }
            if (validacion == false) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('Error'),
                        content: const Text('El usuario no está registrado'),
                        actions: <Widget>[
                          FlatButton(
                            child: const Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ));
            }
          } else {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text('Error'),
                      content: const Text('Campos Vacíos'),
                      actions: <Widget>[
                        FlatButton(
                          child: const Text('Ok'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ));
          }

          /*
          if (encontrarUsuario(context, controllerusuario, controllercontrasena) ==true) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Home()));
          }
          */
        },
        child: const Text('Iniciar sesion',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 50.0,
      color: Colors.black,
      onPressed: () {},
    );
  }

  encontrarUsuario(BuildContext context, TextEditingController controlUser,
      TextEditingController controlPassword) {
    String user = controlUser.text;
    String password = controlPassword.text;
    String tipo_usuario = controllertipouser.text;

    if (user.isNotEmpty && password.isNotEmpty) {
      for (var item in _usuarios) {
        if (item.usuario == user && item.contrasena == password) {
          if (item.tipo_usuario == 'Empleado') {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Home()));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Home2()));
          }
        } else {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Verifique el usuario y contraseña'),
                    actions: <Widget>[
                      FlatButton(
                        child: const Text('Ok'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ));
        }
      }
      ;
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Error'),
                content: const Text('Verifique el usuario y contraseña'),
                actions: <Widget>[
                  FlatButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ));
    }
    return false;
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
    "Iniciar Sesión",
    style: const TextStyle(
        color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget _olvido() {
  return const Text(
    "¿Olvidaste tu contraseña? \n¡Click aquí abajo!",
    style: TextStyle(
        color: Colors.grey,
        fontSize: 17.0,
        decoration: TextDecoration.underline),
    textAlign: TextAlign.center,
  );
}
