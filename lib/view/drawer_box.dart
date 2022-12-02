import 'package:flutter/material.dart';
import 'package:shopy/view/stables/Stable_classes.dart';
import 'package:get/get.dart';

class BoxOfDrawer extends StatelessWidget {
  const BoxOfDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width / 1.5,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('unameUser'),
            accountEmail: const Text('accountEmail@gamiel.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset("images/girl.png"),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://img.freepik.com/free-photo/red-black-brush-stroke-banner-background-perfect-canva_1361-3597.jpg?w=2000",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            height: Get.height / 4.0,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/shopy.jpg"), fit: BoxFit.cover)),
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
            leading: Icon(Icons.info),
            title: Text("about us"),
          ),
        ],
      ),
    );
  }
}
