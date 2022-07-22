import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
    required this.iconSize,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final double iconSize;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width,
        height: size.height / 5.7,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 7,
              decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
            ),
            Positioned(
              top: 35,
              left: 0,
              right: 0,
              child: SizedBox(
                height: size.height / 16,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: iconSize,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Home",
                      style: textTheme.headline1,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          size: iconSize,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          size: iconSize,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Material(
                shadowColor: Colors.black,
                elevation: 3,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(10),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 146, 146, 146),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: "Search here",
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 131, 131, 131))),
                ),
              ),
            ),
          ],
        ));
  }
}
