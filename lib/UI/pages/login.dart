// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/app.dart';
import '../../domain/modelo/usuario.dart';
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
              padding: const EdgeInsets.all(60.0),
              child: _olvido(),
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
        child: TextField(
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

          if (user.isNotEmpty && password.isNotEmpty) {
            for (var item in _usuarios) {
              if (item.usuario == user && item.contrasena == password) {
                if (item.tipo_usuario == 'Empleado') {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Home()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Home2()));
                }
              } else {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Error'),
                          content:
                              const Text('Verifique el usuario y contraseña'),
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
