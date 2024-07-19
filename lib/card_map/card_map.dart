import 'package:flutter/material.dart';

class CardMap extends StatefulWidget {
  const CardMap({super.key});

  @override
  State<CardMap> createState() => _CardMapState();
}

class _CardMapState extends State<CardMap> {
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
        child: CardInfoMap(
            title: 'Nombre del negocio', rating: 4, businessType: 'Lavadero'),
      ),
    );
  }
}

class CardInfoMap extends StatefulWidget {
  final String title;
  final double rating;
  final String businessType;

  const CardInfoMap(
      {super.key,
      required this.title,
      required this.rating,
      required this.businessType});

  @override
  CardInfoMapState createState() => CardInfoMapState();
}

class CardInfoMapState extends State<CardInfoMap>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            contentBox(context),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.cancel_outlined, size: 22),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  child: Text(widget.title,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 15),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(widget.businessType,
                            style: const TextStyle(fontSize: 14)),
                      ),
                      const SizedBox(height: 15),
                      Flexible(
                        child: Row(
                          children: List.generate(
                              5,
                              (index) => Icon(Icons.star,
                                  color: index < widget.rating
                                      ? Colors.yellow
                                      : Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.info_outline_rounded),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Ver info'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.roundabout_right_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Ver ruta'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
