// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mytest/profile/widgets/settings.dart';
import 'package:mytest/profile/widgets/top_portion.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        backgroundColor: const Color(0xff006df1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navega a la pantalla anterior
          },
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            //parche decorativo azul
            Expanded(
              flex: 1,
              child: TopPortion(),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // nombre usuario
                      // Text(
                      //   "Yaidel Luis",
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .titleLarge
                      //       ?.copyWith(fontWeight: FontWeight.bold),
                      // ),
                      //const SizedBox(height: 16),
                      // botones
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     FloatingActionButton.extended(
                      //       onPressed: () {
                      //         log('edit press');
                      //       },
                      //       heroTag: 'Editar Usuario',
                      //       elevation: 0,
                      //       label: const Text("Editar Usuario"),
                      //       icon: const Icon(Icons.edit),
                      //     ),
                      //     const SizedBox(width: 16.0),
                      //     FloatingActionButton.extended(
                      //       onPressed: () {
                      //         log('close press');
                      //       },
                      //       heroTag: 'Cerrar Sesion',
                      //       elevation: 0,
                      //       backgroundColor: Colors.red,
                      //       label: const Text("Cerrar Sesion"),
                      //       icon: const Icon(Icons.logout_outlined),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(height: 8),
                      Settings(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
