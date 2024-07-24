import 'package:flutter/material.dart';

class CardVehicle extends StatelessWidget {
  final String marcaModelo;
  final String matricula;
  final Function()? onTap;

  const CardVehicle({
    super.key,
    this.onTap,
    required this.marcaModelo,
    required this.matricula,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // titulo
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      marcaModelo,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      matricula,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.delete,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
