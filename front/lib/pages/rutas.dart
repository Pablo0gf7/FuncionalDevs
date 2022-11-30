import 'package:flutter/material.dart';
import 'package:front/pages/lista_items.dart';
import 'package:front/pages/lista_usuarios.dart';
import 'package:front/pages/lista_tareas.dart';

//Selecciona lo que se va a mostrar

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const ListaUsuarios(),
      const ListaTareas(),
      const ListaItems()
    ];
    return myList[index];
  }
}
