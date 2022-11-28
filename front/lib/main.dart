import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:front/models/alumno.dart';
import 'package:front/pages/bottom_nav.dart';
import 'package:front/pages/lista_usuarios.dart';
import 'package:front/pages/rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
//Esta seria la barra de navegacion
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BNNavigator(),
      body: Routes(index: 0),
    );
  }
}
