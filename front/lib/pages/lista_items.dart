import 'package:flutter/material.dart';
import 'package:front/models/items.dart';
import 'package:front/pages/lista_tareas.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListaItems extends StatefulWidget {
  const ListaItems({super.key});

  @override
  State<ListaItems> createState() => _ListaItemsState();
}

class _ListaItemsState extends State<ListaItems> {
  //url server
  final urlItems = Uri.parse("http://10.0.2.2:8000/item/");
  //cabecera
  final headers = {"content-type": "application/json;charset=UTF-8"};
  //lista de items
  late Future<List<Item>> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de articulos en stock'),
      ),
      body: FutureBuilder<List<Item>>(
        future: items,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, i) {
                return Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 100,
                      width: 180,
                      margin: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Text(
                        snapshot.data![i].nombre.toString(),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 100,
                      width: 30,
                      margin: const EdgeInsets.only(
                        left: 20.0,
                        right: 40.0,
                      ),
                      child: Text(
                        snapshot.data![i].stock.toString(),
                        textScaleFactor: 1.25,
                      ),
                    ),
                    Container(
                      height: 100,
                      child: IconButton(
                        icon: const Icon(
                          Icons.add_circle,
                        ),
                        iconSize: 20,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 100,
                      child: IconButton(
                        icon: const Icon(Icons.remove_circle),
                        iconSize: 20,
                        onPressed: () {},
                      ),
                    ),
                  ],
                );
              }),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error interno 404."));
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }

  //metodo que se ejecuta cuando se inicia la app
  @override
  void initState() {
    super.initState();
    items = getItems();
  }

  //get que obtiene todos los items
  Future<List<Item>> getItems() async {
    //obtengo respuesta del server
    final res = await http.get(urlItems);

    //obtengo la lista json del body del server
    final lista = List.from(jsonDecode(res.body));

    //lista de todos los items
    List<Item> items = [];

    //recorre la lista json
    lista.forEach((element) {
      //convierto el json en un objeto Item
      final Item elem = Item.fromJson(element);
      items.add(elem); //lo añado a la lista de items
    });

    return items.reversed.toList();
  }
}
