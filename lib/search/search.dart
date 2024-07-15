import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  CustomSearchBarState createState() => CustomSearchBarState();
}

class CustomSearchBarState extends State<CustomSearchBar> {
  bool _isSearching = false;
  TextEditingController searchController = TextEditingController();
  String selectedFilter = ''; // Para almacenar el filtro seleccionado
  List<String> randomNumbers = List.generate(100, (index) {
    return '${(index * 3) + index + (index + (2 * index)) * (477 + index + (18 * index))}'; // Genera números aleatorios de 10 dígitos
  });
  List<String> filteredNumbers = []; // Inicializamos con una lista vacía

  @override
  void initState() {
    super.initState();
    // Al inicio, mostramos todos los números
    filteredNumbers = List.from(randomNumbers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Buscar...',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (query) {
                  setState(() {
                    filteredNumbers = randomNumbers
                        .where((number) => number.contains(query))
                        .toList();
                  });
                },
              )
            : const Text('Nombre del appbar'),
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            setState(() {
              _isSearching = !_isSearching;
              if (!_isSearching) {
                searchController.clear();
              }
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Navega a la pantalla anterior
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredNumbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filteredNumbers[index]),
            // Otras propiedades del elemento de la lista
          );
        },
      ),
    );
  }
}
