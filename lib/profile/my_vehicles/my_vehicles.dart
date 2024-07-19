import 'package:flutter/material.dart';
import 'package:mytest/profile/my_vehicles/add_vehicle.dart';
import 'package:mytest/profile/my_vehicles/model/vehicle.dart';

class MyVehicles extends StatefulWidget {
  const MyVehicles({super.key});

  @override
  MyVehiclesState createState() => MyVehiclesState();
}

class MyVehiclesState extends State<MyVehicles> {
  List<Vehiculo> vehiculos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis vehículos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final nuevoVehiculo = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddVehicle()),
              );
              if (nuevoVehiculo != null) {
                setState(() {
                  vehiculos.add(nuevoVehiculo);
                });
              }
            },
          ),
        ],
      ),
      body: vehiculos.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.directions_car,
                    size: 100.0,
                  ),
                  Text(
                    'Aún no has añadido ningún vehículo',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Para añadir un nuevo vehículo presione el signo + \n Cuando sean añadidos podrás visualizarlos en una lista y podrás editarlos o eliminarlos en cualquier momento.',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: vehiculos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(vehiculos[index].marcaModelo),
                  subtitle: Text(vehiculos[index].matricula),
                );
              },
            ),
    );
  }
}
