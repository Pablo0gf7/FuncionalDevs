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

//creo el contenido visual y la acción a hacer
class TaskListState extends State<TaskList> {
  //array que genera las palabras aleatorias
  final List<Map<String, int>> _tasks = [];
  //tamaño del texto de la lista
  final _biggerFont = const TextStyle(fontSize: 18.0);

  //Funcion que va a otra pagina de la app
  void _pushTask() {
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

  //OTRA FORMA PERO ES MAS ENREDESADA
  //https://api.flutter.dev/flutter/material/ListTile-class.html

  @override
  Widget build(BuildContext context) {
    //lista de tipos de tareas
    final List<int> type_task = [0, 1, 2, 2, 1, 0, 4, 4];
    //lista de tareas
    final List<String> items = List<String>.generate(8, (i) => '$i');

    //genero la listview separable
    final lista_tareas = ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Color.fromARGB(255, 243, 245, 243),
      ),
      padding: const EdgeInsets.all(8.0), //paddind
      itemCount: items.length, //numero de elementos a tener
      itemBuilder: (context, index) {
        //dependiendo del tipo de tarea cambiara el icono
        switch (type_task[index]) {
          case 0:
            return Expanded(
              child: Container(
                  color: Colors.white,
                  width: 200,
                  height: 100,
                  child: ListTile(
                    //contenido de la lista
                    minLeadingWidth: 20,
                    minVerticalPadding: 0, //eliminamos el padding
                    //titulo
                    title: Transform.translate(
                      offset: Offset(10, 10), //padding del titulo
                      child: Text(
                        'Item ${items[index]}',
                        style: TextStyle(fontSize: 35), //tamaño de la fuente
                      ),
                    ),
                    //subtitulo
                    subtitle: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item description',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    //icono
                    trailing: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 100,
                        child: Icon(
                          Icons.mail,
                          size: 90, // tamaño
                          color: Color.fromARGB(255, 22, 160, 148), //color
                        ),
                      ),
                    ),
                  )),
            );

            break;
          case 1:
            return Expanded(
              child: Container(
                  color: Colors.white,
                  width: 200,
                  height: 100,
                  child: ListTile(
                    minLeadingWidth: 20,
                    minVerticalPadding: 0,
                    title: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item ${items[index]}',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    subtitle: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item description',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    trailing: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 100,
                        child: Icon(
                          Icons.android,
                          size: 90,
                          color: Color.fromARGB(255, 22, 160, 148),
                        ),
                      ),
                    ),
                  )),
            );
            break;
          case 2:
            return Expanded(
              child: Container(
                  color: Colors.white,
                  width: 200,
                  height: 100,
                  child: ListTile(
                    minLeadingWidth: 20,
                    minVerticalPadding: 0,
                    title: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item ${items[index]}',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    subtitle: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item description',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    trailing: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 100,
                        child: Icon(
                          Icons.face,
                          size: 90,
                          color: Color.fromARGB(255, 22, 160, 148),
                        ),
                      ),
                    ),
                  )),
            );
            break;
          default:
            return Expanded(
              child: Container(
                  color: Colors.white,
                  width: 200,
                  height: 100,
                  child: ListTile(
                    minLeadingWidth: 20,
                    minVerticalPadding: 0,
                    title: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item ${items[index]}',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    subtitle: Transform.translate(
                      offset: Offset(10, 10),
                      child: Text(
                        'Item description',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    trailing: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 100,
                        child: Icon(
                          Icons.forest,
                          size: 90,
                          color: Color.fromARGB(255, 22, 160, 148),
                        ),
                      ),
                    ),
                  )),
            );
            break;
        }
      },
    );

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 245, 243),
        //añado un icono a la barra AppBar
        appBar: AppBar(title: const Text('Lista de tareas'), actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushTask, //cuando pincha una tarea (ACCION)
            tooltip: 'Sugerencias guardadas',
          )
        ]),
        //creo la listView
        body: Center(child: lista_tareas));
  }
  // TODO Add build() method
}

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() =>
      TaskListState(); //GENERA EL CONTENIDO VISUAL Y EL FUNCIONAMIETO
}
