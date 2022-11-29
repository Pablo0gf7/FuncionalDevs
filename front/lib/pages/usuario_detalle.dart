import 'package:flutter/material.dart';
import 'package:front/models/alumno.dart';

class UsuarioDetalle extends StatefulWidget {
  final id;
  final usuario;

  const UsuarioDetalle({super.key, required this.id, required this.usuario});

  @override
  State<UsuarioDetalle> createState() => _UsuarioDetalleState();
}

class _UsuarioDetalleState extends State<UsuarioDetalle> {
  final headers = {"context-type": "application/json;charset=UTF-8"};

  @override
  Widget build(BuildContext context) {
    final alum = widget.usuario;
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuario ${alum.nombre}"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 161, 218, 233), //color
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nombre: ",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        alum.nombre + " " + alum.apellidos,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //nombre de usuario
            Container(
              color: Color.fromARGB(255, 84, 189, 218), //color
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nombre de usuario: ",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        alum.nombre_usuario,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
