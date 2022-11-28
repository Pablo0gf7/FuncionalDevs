import 'package:flutter/material.dart';

class BNNavigator extends StatefulWidget {
  const BNNavigator({super.key});

  @override
  State<BNNavigator> createState() => _BNNavigatorState();
}

class _BNNavigatorState extends State<BNNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        iconSize: 25.0,
        selectedFontSize: 15.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Usuarios'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Tareas'),
          //BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          //BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio')
        ]);
  }
}
