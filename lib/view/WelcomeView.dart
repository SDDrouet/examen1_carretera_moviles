import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_navegacion/view/FormVehiculo.dart';

class WelcomeView extends StatelessWidget {
  final String username;

  WelcomeView(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // Tamaño del AppBar
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent], // Colores del degradado
              begin: Alignment.topCenter, // Dirección del degradado
              end: Alignment.bottomCenter,
            ),
          ),
          child: AppBar(
            title: Text(
              'Viaja Siempre Seguro!',
                style: TextStyle(
                color: Colors.white
            ),
          ),
            backgroundColor: Colors.transparent, // Hacemos el color de fondo transparente
            elevation: 0, // Eliminamos la sombra del AppBar
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, $username',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/carroSeguro.jpg',
              width: 250,
              height: 250,
            ),

            Text('Cálcula el consumo de gasolina de tu viaje, en un simple paso.',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 30,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FormVehiculo()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
                  child: Text(
                    "Comenzar",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),

                SizedBox(width: 30,),
              ],
            ),

          ],
        ),
      ),
    );
  }
  
}