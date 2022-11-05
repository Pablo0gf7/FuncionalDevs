import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}*/
//es lo mismo que hacer
void main() => runApp(const MyApp());

//clase principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      //titulo de la app
      title: 'FuncionalDevs',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: TaskList(),
    );
  }
}
/*Scaffold(
          appBar: AppBar(
            //titulo del banner
            title: const Text('Startup Name Generator 3'),
          ),
          body: const Center(
            //clase que generara la lista de palabras random
            child: RandomWords(),
          ),
        )*/
/*theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Flutter Demo First'),*/

class TaskListState extends State<TaskList> {
  //array que genera las palabras aleatorias
  final _suggestions = <String>[];
  //tamaño del texto de la lista
  final _biggerFont = const TextStyle(fontSize: 18.0);

  //Funcion que va a otra pagina de la app
  void _pushSaved() {
    /*Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      final tiles = _saved.map(
        (pair) {
          return ListTile(
            title: Text(
              pair.asPascalCase,
              style: _biggerFont,
            ),
          );
        },
      );
      final divided = tiles.isNotEmpty
          ? ListTile.divideTiles(
              context: context,
              tiles: tiles,
            ).toList()
          : <Widget>[];

      return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Sugestions'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: divided,
        ),
      );
    }));*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //añado un icono a la barra AppBar
      appBar: AppBar(title: const Text('Lista de tareas'), actions: [
        IconButton(
          icon: const Icon(Icons.list),
          onPressed: _pushSaved,
          tooltip: 'Sugerencias guardadas',
        )
      ]),
      //creo la listView
      body: ListView.builder(
          //padding entre items
          padding: const EdgeInsets.all(16.0),
          /*
    se llama cada par de palabras sugeridas, añadiendo una fila para las parejas 
    de palabras.
    */
          itemBuilder: (context, i) {
            //construye la lista
            //añade un widget separador entre items de cada fila en la ListView.
            if (i.isOdd) return const Divider();

            /*
      divide i entre 2 de forma entera, para calcular el numero de palabras 
      emparejadas en la ListView, salvo los widgets divisores.
      */
            final index = i ~/ 2;
            if (index >= _suggestions.length) {
              /*
        si alcanza el final de los pares de palabras, entonces genera 10 más y
        los añade a la lista de sugerencias.
        */
              _suggestions.addAll([
                'task 1',
                'task 2',
                'task3',
                'task 4',
                'task 5',
                'task6',
                'task 7',
                'task 8',
                'task 9',
                'task10'
              ]);
            }
            //guardo las palabras en un contenedor
            //final alreadySaved = _saved.contains(_suggestions[index]);

            return ListTile(
              title: Text(
                _suggestions[index],
                style: _biggerFont,
              ),
              //añadimos el icono del corazon en la lista
              trailing: Icon(
                //cuando esta seleccionado Icons.favorite
                //cuando no esta seleccionado Icons.favorite_border
                Icons.favorite,
                //cuando esta seleccionado es rojo y cuando no no tiene color
                color: Colors.red,
              ),

              //aplicamos la acción
              onTap: () {
                setState(() {
                  //si esta guardado
                });
              },
            );
          }),
    );

    //final wordPair = WordPair.random();
    //return Text(wordPair.asPascalCase);
  }
  // TODO Add build() method
}

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => TaskListState();
}
