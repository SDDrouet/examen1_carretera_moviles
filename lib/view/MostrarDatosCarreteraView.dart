import 'package:flutter/material.dart';
import 'package:login_navegacion/controller/CarreteraController.dart';
import 'package:login_navegacion/view/WelcomeView.dart';

class MostrarDatosCarreteraView extends StatelessWidget {
  final double km;
  final double precioLitro;
  final double litrosGastados;
  final double litrosPorKm;
  final double pelasPorKm;
  final int horas;
  final int minutos;
  final int dinero;

  MostrarDatosCarreteraView({
    required this.km,
    required this.precioLitro,
    required this.litrosGastados,
    required this.litrosPorKm,
    required this.pelasPorKm,
    required this.horas,
    required this.minutos,
    required this.dinero,
  });

  @override
  Widget build(BuildContext context) {
    final carreteracontroller = Carreteracontroller(km, precioLitro, litrosGastados, litrosPorKm, pelasPorKm, horas, minutos, dinero);
    carreteracontroller.calcularValores();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalles del Viaje',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kilómetros recorridos: $km",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Precio por litro: \$${precioLitro.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Litros gastados: ${litrosGastados.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Litros por kilómetro: ${litrosPorKm.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Costo por kilómetro: \$${pelasPorKm.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Tiempo total: ${horas}h ${minutos}m",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Dinero gastado: \$${dinero.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeView("Stephen Drouet")));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(20),
              ),
              child: Text(
                "Inicio",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
