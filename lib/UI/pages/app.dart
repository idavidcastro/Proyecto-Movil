import 'package:flutter/material.dart';
import 'package:proyectomovil/UI/pages/bienvenida.dart';
import 'package:proyectomovil/UI/pages/config.dart';
import 'package:proyectomovil/UI/pages/login.dart';
import 'package:proyectomovil/UI/pages/principal.dart';
import 'package:proyectomovil/UI/pages/routes.dart';

import 'bienvenidaEMP.dart';
import 'routes2.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Principal',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const Login(),
        debugShowCheckedModeBanner: false);
  }
}

//---------------------------------------------------------------------------

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;
  BottomNavigation? myBNB;
  @override
  void initState() {
    myBNB = BottomNavigation(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
    );
  }
}

//-----------------------------------------------------------------------
class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int index = 1;
  BottomNavigation? myBNB;
  @override
  void initState() {
    myBNB = BottomNavigation(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: Routes2(index: index),
    );
  }
}
