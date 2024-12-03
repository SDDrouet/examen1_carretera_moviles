import 'package:flutter/material.dart';

class FormVehiculo extends StatelessWidget {
  // Declarar los objetos para los campos del formulario
  final TextEditingController _kmController = TextEditingController();
  final TextEditingController _precioLitroController = TextEditingController();
  final TextEditingController _litrosGastadosController = TextEditingController();
  final TextEditingController _litrosKmController = TextEditingController();
  final TextEditingController _pelasKmController = TextEditingController();
  final TextEditingController _horasController = TextEditingController();
  final TextEditingController _minutosController = TextEditingController();
  final TextEditingController _dineroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: AppBar(
            title: Text(
              'Formulario de Vehículo',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField(_kmController, "Kilómetros (km)", Icons.directions_car),
              _buildTextField(_precioLitroController, "Precio por litro (precioLitro)", Icons.local_gas_station),
              _buildTextField(_litrosGastadosController, "Litros gastados", Icons.local_drink),
              _buildTextField(_litrosKmController, "Litros por km", Icons.speed),
              _buildTextField(_pelasKmController, "Pelas por km", Icons.attach_money),
              _buildTextField(_horasController, "Horas", Icons.timer),
              _buildTextField(_minutosController, "Minutos", Icons.access_time),
              _buildTextField(_dineroController, "Dinero", Icons.monetization_on),
              SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Acciones al presionar el botón
                    double km = double.tryParse(_kmController.text.trim()) ?? 0.0;
                    double precioLitro = double.tryParse(_precioLitroController.text.trim()) ?? 0.0;
                    double litrosGastados = double.tryParse(_litrosGastadosController.text.trim()) ?? 0.0;
                    double litrosKm = double.tryParse(_litrosKmController.text.trim()) ?? 0.0;
                    double pelasKm = double.tryParse(_pelasKmController.text.trim()) ?? 0.0;
                    int horas = int.tryParse(_horasController.text.trim()) ?? 0;
                    int minutos = int.tryParse(_minutosController.text.trim()) ?? 0;
                    int dinero = int.tryParse(_dineroController.text.trim()) ?? 0;

                    if (km > 0 && precioLitro > 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Datos ingresados correctamente")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Por favor ingrese valores válidos")),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
                  child: Text(
                    "Guardar Datos",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          icon: Icon(icon),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
