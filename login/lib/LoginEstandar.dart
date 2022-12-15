import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/main.dart';


class login extends StatefulWidget{

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login>{
  TextEditingController usuario = new TextEditingController();
  TextEditingController contrasena = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.pink,
                blurRadius: 30.0,
                spreadRadius: 5.0,
                offset: Offset(
                    10.0,10.0
                )
            )
          ],
        ),
        margin: EdgeInsets.only(top: 70, bottom: 70,left: 50, right: 50),//margen izq y dcha
        padding: EdgeInsets.only(left: 20, right: 20),//pad de nombre y pass
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//alineamos en el centro de la pantalla
            children: [
              Image.asset("assets/logosolo.png", height: 150,),
              TextField(
                controller: usuario,
                decoration: InputDecoration(
                    hintText: "Nombre usuario"
                ),
              ),
              SizedBox(height: 20,), //separacion entre usr y pass
              TextField(
                controller: contrasena,
                obscureText: true ,
                decoration: InputDecoration(
                  hintText: "Contrasena",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ElevatedButton(
                    child: Text("Inicio Sesion", style:TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed:(){
                      //Navigator.push(context, MaterialPageRoute(builder: (_) =>SiguientePagina()));
                    }
                ),
              ),
              //SizedBox(height: 100,),
              //Text("Nuevo usuario? crear cuenta")
            ],
          ),
        ),
      ),
    );
  }
}
