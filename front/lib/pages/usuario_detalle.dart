import 'package:flutter/material.dart';
import 'package:front/models/alumno.dart';

class UsuarioDetalle extends StatefulWidget {
  //guarda la información cogida de la vista anterior
  final id;
  final usuario;

  //la recoge
  const UsuarioDetalle({super.key, required this.id, required this.usuario});

  @override
  State<UsuarioDetalle> createState() => _UsuarioDetalleState();
}

class _UsuarioDetalleState extends State<UsuarioDetalle> {
  final headers = {"context-type": "application/json;charset=UTF-8"};

  @override
  Widget build(BuildContext context) {
    final alum = widget.usuario; //contiene la información del usuario
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuario ${alum.nombre}"), //titulo de la barra
      ),
      body: Column(
        //contenedores por columnas
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 161, 218, 233), //color
            child: Row(
              //contenedor por filas
              children: <Widget>[
                Container(
                  //contiene el label
                  height: 100,
                  margin: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: const Align(
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
                ),
                Container(
                  //contiene el nombre y apellidos del usuario
                  height: 100,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      alum.nombre + " " + alum.apellidos,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //label nombre de usuario
          Container(
            color: const Color.fromARGB(255, 84, 189, 218), //color
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: const Align(
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
                ),
                Container(
                  //contiene el nombre del usuario
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
      //boton flotante en el centro con lapiz
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
        elevation: 5,
      ),
      bottomNavigationBar: new BottomAppBar(
        child: Padding(
          //elimino el padding
          padding: const EdgeInsets.all(20),
        ),
        elevation: 0.0,
        color: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
