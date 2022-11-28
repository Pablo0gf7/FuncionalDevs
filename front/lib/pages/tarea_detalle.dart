//aqui cuando se pulse sobre una tarea se vendra aqui para detallarla

import 'package:flutter/material.dart';
import 'package:front/models/tareas.dart';

class TareaDetallada extends StatefulWidget {
  final int id;
  final Tarea tarea;
  const TareaDetallada({super.key, required this.id, required this.tarea});

  @override
  State<TareaDetallada> createState() => _TareaDetalladaState();
}

class _TareaDetalladaState extends State<TareaDetallada> {
  final headers = {"content-type": "application/json;charset=UTF-8"};
  @override
  Widget build(BuildContext context) {
    final Tarea t1 = widget.tarea;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea ${widget.id}"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: const Color.fromARGB(255, 28, 145, 223),
            child: const Center(child: Text('Nombre')),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text(t1.nombre)),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 28, 145, 223),
            child: const Center(child: Text('Descripcion')),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text(t1.descripcion)),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 28, 145, 223),
            child: const Center(child: Text("Estado")),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text("${t1.estado}")),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 28, 145, 223),
            child: const Center(child: Text("Fecha Inicio")),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text(t1.fecha_inicio)),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 28, 145, 223),
            child: const Center(child: Text("Fecha Fin")),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text(t1.fecha_fin)),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 28, 145, 223),
            child: const Center(child: Text("usuario que la realiza")),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text(t1.usuario.toString())),
          ),
          //Boton para que vaya a editar
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                )),
            child: const Text("Editar"),
          ),
        ],
      ),
    );
  }
}
