import 'package:flutter/material.dart';
import 'package:mytest/profile/my_vehicles/model/vehicle.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  AddVehicleState createState() => AddVehicleState();
}

class AddVehicleState extends State<AddVehicle> {
  final _formKey = GlobalKey<FormState>();
  final _matriculaController = TextEditingController();
  final _marcaModeloController = TextEditingController();
  final _nombreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Añadir vehículo'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                maxLength: 6,
                controller: _matriculaController,
                decoration: const InputDecoration(labelText: 'Matrícula'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor introduce la matrícula';
                  }
                  Pattern pattern = r'^[A-Za-z]{3}[0-9]{3}$';
                  RegExp regex = RegExp(pattern.toString());
                  if (!regex.hasMatch(value)) {
                    return 'Por favor, introduce una matrícula válida';
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: _marcaModeloController,
                decoration: const InputDecoration(labelText: 'Marca y modelo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor introduce la marca y modelo';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nombreController,
                decoration:
                    const InputDecoration(labelText: 'Nombre (Opcional)'),
              ),
              const Expanded(child: SizedBox()),
              ElevatedButton(
                child: const Text('Guardar'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(
                      context,
                      Vehiculo(
                        matricula: _matriculaController.text,
                        marcaModelo: _marcaModeloController.text,
                        nombre: _nombreController.text,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
