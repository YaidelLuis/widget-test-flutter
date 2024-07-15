import 'package:flutter/material.dart';
import 'package:mytest/dropdown/widgets/custom_dropdown.dart';

class DropdownScreen extends StatelessWidget {
  const DropdownScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navega a la pantalla anterior
          },
        ),
      ),
      body: const Center(
        child: CustomDropdown(),
      ),
    );
  }
}
