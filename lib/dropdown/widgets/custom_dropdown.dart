import 'package:flutter/material.dart';
import 'package:mytest/dropdown/model/map.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  CustomDropdownState createState() => CustomDropdownState();
}

class CustomDropdownState extends State<CustomDropdown> {
  dynamic selectedOption; // Variable para almacenar la opción seleccionada

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedOption,
      hint: const Text(
          'Selecciona una opción'), // Texto que se muestra cuando no hay opción seleccionada
      onChanged: (newValue) {
        setState(() {
          selectedOption = newValue;
        });
      },
      items: opciones.keys.map((String key) {
        return DropdownMenuItem<String>(
          value: key,
          child: Text(key),
        );
      }).toList(),
    );
  }
}
