import 'package:flutter/material.dart';
import 'package:shopy/view/stables/Stable_classes.dart';

import '../main.dart';

class BoxOfDrawer extends StatelessWidget {
  const BoxOfDrawer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: size.width / 1.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: size.height / 4.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/shopy.jpg"),
                      fit: BoxFit.cover)),
              child: const Text("Shopy",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            const Div(),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
            const Div(),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text("favorite"),
            ),
            const Div(),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text("share"),
            ),
            const Div(),
            const ListTile(
              leading: Icon(Icons.cabin),
              title: Text("about us"),
            ),
          ],
        ),
      ),
    );
  }
}
