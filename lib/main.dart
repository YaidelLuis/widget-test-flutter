import 'package:flutter/material.dart';
import 'package:mytest/calendar/calendar.dart';
import 'package:mytest/dropdown/dropdown.dart';
import 'package:mytest/expandable/expandable_title.dart';
import 'package:mytest/profile/profile_screen.dart';
import 'package:mytest/search/search.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Test Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Calendario
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomDatePicker()),
                );
              },
              child: const SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Custom Date Picker'),
                  ],
                ),
              ),
            ),
            //! Buscar
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomSearchBar()),
                );
              },
              child: const SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
            ),
            //! Titulo expansible
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExpansionTileExample()),
                );
              },
              child: const SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wrap_text),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Expandable title'),
                  ],
                ),
              ),
            ),
            //! Perfil usuario
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: const SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.manage_accounts),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Profile screen'),
                  ],
                ),
              ),
            ),
            //! Dropdown Button cargando datos d un map<String, dynamic>
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DropdownScreen()),
                );
              },
              child: const SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_drop_down_circle_outlined),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Dropdown carga map'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
