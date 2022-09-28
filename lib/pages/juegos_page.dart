import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/game_card.dart';

class JuegosPage extends StatelessWidget {
  const JuegosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.gamepad),
        title: Text('Juegos'),
        backgroundColor: Colors.purple,
      ),
      body: GameCard(
          imagen: 'lego_jurassic_world.jpg',
          titulo: 'Lego Jurassic World',
          precio: '94.990'),
    );
  }
}
