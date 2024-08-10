import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: const Text('Suscríbete Ahora'),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¡Únete a nuestro plan de suscripción!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Icon(
                        Icons.star,
                        size: 100,
                        color: Colors.yellow,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Beneficios exclusivos, contenido premium y mucho más.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      AnimatedButton(
                        onPressed: () {
                          // Acción al presionar el botón
                        },
                        height: 60,
                        width: 200,
                        color: Colors.yellow,
                        shadowDegree: ShadowDegree.dark,
                        child: const Text(
                          'Suscríbete Ahora',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
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
