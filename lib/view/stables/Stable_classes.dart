// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:shopy/card_screen.dart';
import 'package:shopy/controller/getx_controller.dart';
import 'package:shopy/view/pages/search_page.dart';

import '../../model/internet_data.dart';
import '../../model/theme_data.dart';

class PhoneBrands extends StatelessWidget {
  const PhoneBrands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: GridView.builder(
            itemCount: pic.getRange(0, 4).length,
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 100.0,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(pic[index].pictuer), fit: BoxFit.cover),
                ),
              );
            }),
      ),
    );
  }
}

class TecNews extends StatelessWidget {
  const TecNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: GridView.builder(
            itemCount: pik.length,
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 100.0,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(pik[index].pictuer), fit: BoxFit.cover),
                ),
              );
            }),
      ),
    );
  }
}

class AllElectronicThings extends StatelessWidget {
  const AllElectronicThings({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: size.height / 0.6,
        width: size.width,
        child: GridView.builder(
            itemCount: 10, //ShopingLiat3.length,
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((5)),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                        height: 120,
                        width: 120,
                        // color: Colors.grey[300],
                        child: //Image.network(ShopingLiat3[index].imageUrl)
                            Image.asset("images/class.png")),
                  ),
                  Positioned(
                    bottom: 8,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 30,
                      width: size.width / 3.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular((5)),
                        color: Colors.amber,
                      ),
                      child: const Center(child: Text("buy")),
                    ),
                  )
                ]),
              );
            }),
      ),
    );
  }
}

class ShareWidget extends StatelessWidget {
  const ShareWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: size.height / 7.2,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 214, 212, 212),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            FaIcon(FontAwesomeIcons.instagram,
                color: SolidColors.appBarColorBlue),
            FaIcon(FontAwesomeIcons.twitter,
                color: SolidColors.appBarColorBlue),
            FaIcon(
              FontAwesomeIcons.youtube,
              color: SolidColors.appBarColorBlue,
            ),
            FaIcon(FontAwesomeIcons.whatsapp,
                color: SolidColors.appBarColorBlue),
            FaIcon(FontAwesomeIcons.telegram,
                color: SolidColors.appBarColorBlue),
          ],
        ),
      ),
    );
  }
}

class Div extends StatelessWidget {
  const Div({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey[300],
      indent: 30,
      endIndent: 30,
    );
  }
}

// this key for the drawer without it the drawer cant open
// and i gona have a bug.
final GlobalKey<ScaffoldState> _key = GlobalKey();

class BoxOfAppBar extends StatelessWidget {
  const BoxOfAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4.5,
      width: size.width,
      child: Stack(children: [
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
          top: 30,
          left: 0,
          right: 0,
          child: SizedBox(
            height: size.height / 16,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Shopy",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      // Get.to(CardScreen());
                       Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CardScreen()));
                      //   Get.lazyPut(() => CardController());
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          top: 70,
          right: 20,
          left: 20,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(20),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SearchPage()));
                      },
                      icon: const Icon(Icons.safety_check)),
                  hintText: 'search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
