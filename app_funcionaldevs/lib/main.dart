import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      //tema
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          //fondo de la barra de arriba
          backgroundColor: Colors.white,
          //color texto de la barra de arriba
          foregroundColor: Colors.black,
        ),
      ),
      //lo que queremos que visualice inicialmente
      home: MenuList(),
    );
  }
}

/*Future<http.Response> fetchTareas(http.Client client) async {
  return client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
}*/

//creo el contenido visual y la acción a hacer del menu
class MenuListState extends State<MenuList> {
  //tamaño del texto de la lista
  //final _biggerFont = const TextStyle(fontSize: 18.0);

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

  //JSON TERMINARLO
  //late final String _id;

  /*Future<String> recibirString() async {
    final respuesta =
        await http.get("http://tu-ip-o-dominio:8888/codigos/php/");
    if (respuesta.statusCode == 200) {
      log(respuesta.body.toString());
      setState(() {
        var parsedJson = json.decode(respuesta.body);
        _id = parsedJson["producto"];
      });
    } else {
      throw Exception("Fallo");
    }
  }*/

  @override
  Widget build(BuildContext context) {
    //el buid es lo que va a construir visual y funcional
    //lista de tipos de opciones
    final List<int> type_menu = [0, 1, 2, 2, 1, 0, 4, 4];
    //lista de tareas
    final List<String> items = [
      "Lista de tareas",
      "Tareas realizadas",
      "Chat",
      "Diagrama de desarrollo",
      "Inventario"
    ];

    //genero la listview separable
    final lista_menu = ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Color.fromARGB(
            255, 243, 245, 243), //el fondo del contenedor ListView
      ),
      padding: const EdgeInsets.all(26.0), //paddind entre items
      itemCount: items.length, //numero de elementos a tener
      itemBuilder: (context, index) {
        //recorre de 0 a items.length
        //dependiendo del tipo de opción del menu cambiara el icono
        switch (type_menu[index]) {
          case 0: //icono lista
            return Expanded(
              //contenedor expandido solo horizontal
              child: Container(
                height: 100,
                color:
                    Color.fromARGB(255, 161, 218, 233), //color del contenedor
                child: Row(
                  //horizontal por columnas
                  //children para crear hijos
                  children: <Widget>[
                    //contenedor expandido para cada item
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            items[index],
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/print.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );

            break;
          case 1:
            //esto solo devuelve 1 item a la list view
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 161, 218, 233), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        //con margen a los lados de 20
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        //meto el texto, indicando el tipo de alineación
                        child: Align(
                          alignment: Alignment.centerLeft,
                          //texto a visualizar
                          child: Text(
                            items[index],
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            //estilo de la fuente
                            style: TextStyle(
                              //tamaño de la fuente
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //contenedor para la imagen de la derecha de cada item
                    Container(
                      width: 100,
                      height: 100,
                      //las imagenes se menten en cajas Box
                      decoration: BoxDecoration(
                        //metemos la ruta de la imagen
                        image: DecorationImage(
                          image: AssetImage('images/example.png'),
                          //tipo de relleno
                          fit: BoxFit.fill,
                        ),
                        //tipo de caja (redonda, cuadrada, ...)
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );
            break;
          case 2:
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 161, 218, 233), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            items[index],
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/print.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );
            break;
          default:
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 161, 218, 233), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            items[index],
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/example.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );
            break;
        }
      },
    );

    //esto devuelve todo el contenido de la escena (appbar, lista, navegación, ...)
    return Scaffold(
        //fondo del contenedor general
        backgroundColor: Color.fromARGB(255, 243, 245, 243),
        //añado la barra AppBar
        appBar: AppBar(title: const Text('Menú Principal'), actions: [
          //añado un boton con un icono
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushTask, //cuando pincha una tarea (ACCION)
            //cuando pasas el raton por encima del boton visualiza esto
            tooltip: 'Sugerencias guardadas',
          )
        ]),
        //navegador de abajo
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            //elimino el padding
            padding: const EdgeInsets.all(0),
            //lo que va a contener el navegador
            child: OverflowBar(
              //alinear el contenido centrado
              overflowAlignment: OverflowBarAlignment.center,
              children: <Widget>[
                //creo un contenedor por columnas
                Row(
                  //de tamaño todo lo maximo posible
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:
                      MainAxisAlignment.center, //alineamiento de las cajas
                  crossAxisAlignment:
                      CrossAxisAlignment.center, //alineamiento cruzado
                  children: <Widget>[
                    //flecha izquierda
                    SizedBox(
                      //tamaño
                      width: 90,
                      //icono
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        //tamaño del icono
                        iconSize: 80,
                        //acción del boton
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 50), //separador
                    //flecha arriba
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_upward,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 50), //separador
                    //flecha abajo
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero, // Set this
                          padding: EdgeInsets.zero, // and this
                        ),
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 50), //separador
                    //flecha derecha
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          color: Color.fromARGB(255, 168, 15, 148),
        ),
        //creo la listView
        body: Center(child: lista_menu));
  }

  // TODO Add build() method
  //acción del boton
  void accionBoton() {}
}

//contenedor global de todo el contenido
class MenuList extends StatefulWidget {
  const MenuList({super.key});

  //utiliza estados states
  @override
  State<MenuList> createState() =>
      MenuListState(); //GENERA EL CONTENIDO VISUAL Y EL FUNCIONAMIETO
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

  //JSON TERMINARLO
  //late final String _id;

  /*Future<String> recibirString() async {
    final respuesta =
        await http.get("http://tu-ip-o-dominio:8888/codigos/php/");
    if (respuesta.statusCode == 200) {
      log(respuesta.body.toString());
      setState(() {
        var parsedJson = json.decode(respuesta.body);
        _id = parsedJson["producto"];
      });
    } else {
      throw Exception("Fallo");
    }
  }*/

  @override
  Widget build(BuildContext context) {
    //creamos el request
    //obtenemos el contenido de la pagina
    var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    //obtengo respuesta
    //Response response = http.get(url);

    //lista de tipos de tareas
    final List<int> type_task = [0, 1, 2, 2, 1, 0, 4, 4];
    //lista de tareas
    final List<String> items = List<String>.generate(8, (i) => '$i');

    //genero la listview separable
    final lista_tareas = ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Color.fromARGB(255, 243, 245, 243),
      ),
      padding: const EdgeInsets.all(26.0), //paddind
      itemCount: items.length, //numero de elementos a tener
      itemBuilder: (context, index) {
        //dependiendo del tipo de tarea cambiara el icono
        switch (type_task[index]) {
          case 0:
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 22, 160, 148), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Color.fromARGB(255, 22, 160, 148),
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Car or sport car',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/print.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Color.fromARGB(255, 22, 160, 148),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );

            break;
          case 1:
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 22, 160, 148), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Color.fromARGB(255, 22, 160, 148),
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Car or sport car',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/example.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Color.fromARGB(255, 22, 160, 148),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );
            break;
          case 2:
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 22, 160, 148), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Color.fromARGB(255, 22, 160, 148),
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Car or sport car',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/example.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Color.fromARGB(255, 22, 160, 148),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            );
            break;
          default:
            return Expanded(
              child: Container(
                width: 200,
                height: 100,
                color: Color.fromARGB(255, 22, 160, 148), //color
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Color.fromARGB(255, 22, 160, 148),
                        height: 100,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Car or sport car',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/example.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Color.fromARGB(255, 22, 160, 148),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
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
        //navegador de abajo
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: OverflowBar(
              overflowAlignment: OverflowBarAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:
                      MainAxisAlignment.center, //alineamiento de las cajas
                  crossAxisAlignment:
                      CrossAxisAlignment.center, //alineamiento cruzado
                  children: <Widget>[
                    //flecha izquierda
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 50), //separador
                    //flecha arriba
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_upward,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 50), //separador
                    //flecha abajo
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero, // Set this
                          padding: EdgeInsets.zero, // and this
                        ),
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 50), //separador
                    //flecha derecha
                    SizedBox(
                      width: 90,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 4, 127, 158),
                        ),
                        iconSize: 80,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          color: Color.fromARGB(255, 168, 15, 148),
        ),
        //creo la listView
        body: Center(child: lista_tareas));
  }

  // TODO Add build() method
  //acción del boton
  void accionBoton() {}
}

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() =>
      TaskListState(); //GENERA EL CONTENIDO VISUAL Y EL FUNCIONAMIETO
}
