import 'package:flutter/material.dart';

class Carreteracontroller {
  double km;
  double precioLitro;
  double litrosGastados;
  double litros_km;
  double pelas_km;

  int horas;
  int minutos;
  int dinero;

  Carreteracontroller(this.km, this.precioLitro, this.litrosGastados, this.litros_km, this.pelas_km, this.horas,
      this.minutos, this.dinero);

  void calcularValores() {
    minutos = 60 * horas + minutos;
    litrosGastados = dinero / precioLitro;
    litros_km = litrosGastados/km;
    pelas_km = litros_km * precioLitro;
  }
}