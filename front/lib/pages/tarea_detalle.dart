//aqui cuando se pulse sobre una tarea se vendra aqui para detallarla
import 'package:flutter/material.dart';

class TareaDetallada extends StatefulWidget {
  final int id;
  const TareaDetallada({
    super.key,
    required this.id,
  });

  @override
  State<TareaDetallada> createState() => _TareaDetalladaState();
}

class _TareaDetalladaState extends State<TareaDetallada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tarea " + widget.id.toString()),
        ),
        body: Center(
          child: Text("Aqui muestra toda la informacion de la tarea"),
        ));
  }
}
