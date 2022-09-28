import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/game_card.dart';

class ListaJuegosPage extends StatelessWidget {
  final juegos = [
    {
      'imagen': 'lego_jurassic_world.jpg',
      'titulo': 'Lego Jurassic World',
      'precio': '94.990'
    },
    {
      'imagen': 'mario_kart_8_deluxe.jpg',
      'titulo': 'Mario Kart 8 Deluxe',
      'precio': '64.990'
    },
    {
      'imagen': 'mario_maker_2.jpg',
      'titulo': 'Mario Maker 2',
      'precio': '90.990'
    },
    {
      'imagen': 'mario_odyssey.jpg',
      'titulo': 'Mario Oddysey',
      'precio': '34.990'
    },
    {
      'imagen': 'mario_u_deluxe.jpg',
      'titulo': 'Mario U Deluxe',
      'precio': '114.990'
    },
    {
      'imagen': 'sonic_forces.jpg',
      'titulo': 'Sonic Forces',
      'precio': '25.990'
    },
  ];

  //const ListaJuegosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.gamepad),
        title: Text('Juegos'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: juegos.map((juego) {
          return GameCard(
            imagen: juego['imagen'].toString(),
            titulo: juego['titulo'].toString(),
            precio: juego['precio'].toString(),
          );
        }).toList(),
      ),
    );
  }
}
