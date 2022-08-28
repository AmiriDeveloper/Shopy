import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellingPage extends StatelessWidget {
  const SellingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidge(size: size),
            ChosingBox(size: size),
            const BodyShow(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class BodyShow extends StatelessWidget {
  const BodyShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 5, 5, 3),
          child: GridView.builder(
              // physics: const ClampingScrollPhysics(),
              itemCount: 50,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                crossAxisCount: 2,
                mainAxisExtent: 200,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                );
              }),
        ),
      ),
    );
  }
}

class ChosingBox extends StatelessWidget {
  const ChosingBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      width: double.infinity,
      child: PageView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                    image: AssetImage(
                      'images/How.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
            ),
          );
        },
      ),
    );
  }
}

class AppBarWidge extends StatelessWidget {
  const AppBarWidge({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: size.height / 15,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  "Shopy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  CupertinoIcons.bag,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
