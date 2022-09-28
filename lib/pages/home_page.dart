import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  TextStyle estilo1 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle estilo2 = TextStyle(fontSize: 30, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //nombre atributo: instancia de clase
      appBar: AppBar(
        leading: Icon(Icons.account_balance,
            color: Color.fromARGB(255, 136, 54, 84)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Purgatorio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(MdiIcons.help, size: 100),
            Text(
              'Were you a good girl:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Yes',
                    style: estilo1,
                  ),
                  color: Colors.green.shade100,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  child: Text(
                    'No',
                    style: estilo1,
                  ),
                  color: Colors.red.shade100,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
              ],
            ),
            Row(
              // por que no lo cambia?
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_road,
                  color: Colors.red,
                  size: 50,
                ),
                Icon(MdiIcons.allergy),
              ],
            ),
            Container(
              color: Colors.deepPurple.shade100,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Uno', style: estilo2),
                  Spacer(),
                  Text('Dos', style: estilo2),
                  Spacer(),
                  Text('Tres', style: estilo2),
                  Text('Cuatro', style: estilo2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
