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
      title: 'Startup Name Generator 2',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: RandomWords(),
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

//DESABILITADO------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//------------------------------------------------------------------------------

class RandomWordsState extends State<RandomWords> {
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
      appBar: AppBar(title: const Text('Starup Name Generator 5'), actions: [
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

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => RandomWordsState();
}

//DESABILITADO------------------------------------------------------------------
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //genera palabras inglesas aleatorias
    //final wordPair = WordPair.random();

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RandomWords(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment pls',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
