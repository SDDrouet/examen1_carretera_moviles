import 'package:flutter/material.dart';
import 'package:login_navegacion/controller/CarreteraController.dart';

class MostrarEdadView extends StatelessWidget {
  String name;
  int year;
  int month;
  int day;
  Edad edad;

  MostrarEdadView(
    this.name,
    this.year,
    this.month,
    this.day,
  ) : edad = Edad() {
    edad.calcularEdad(year, month, day);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // Tamaño del AppBar
        child: AppBar(
          title: Text(
            'Calculadora de edad',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20, // Tamaño de la fuente
              fontWeight: FontWeight.bold, // Negrita para mayor visibilidad
            ),
          ),
          backgroundColor: Colors.blue, // Fondo sólido para el AppBar
          elevation: 0, // Sin sombra
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Agregar padding a todo el body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nombre: $name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16), // Separación entre los elementos
            Text(
              "Edad:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Años: ${edad.years}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Meses: ${edad.months}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Días: ${edad.days}",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }


}