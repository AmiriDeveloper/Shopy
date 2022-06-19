import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopy/buey_page.dart';
import 'package:shopy/buy_page2.dart';
import 'package:shopy/internet_data.dart';
import 'package:shopy/search_page.dart';
import 'package:shopy/selling_page.dart';
import 'my_stables.dart';
import 'shopping_list.dart';
import 'package:shopy/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;

    // ignore: prefer_const_constructors
    return MaterialApp(debugShowCheckedModeBanner: false, home: SearchPage()
        // SellingPage()
        //  ShopyApp(),
        );
  }
}

class ShopyApp extends StatefulWidget {
  const ShopyApp({
    Key? key,
    // required this.text,
  }) : super(key: key);

  // final TextTheme text;

  @override
  State<ShopyApp> createState() => _ShopyAppState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _ShopyAppState extends State<ShopyApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 1.1;
    return Scaffold(
      key: _key,
      drawer: Drawer(
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
              Divider(
                color: Colors.grey[300],
                indent: 30,
                endIndent: 30,
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
              ),
              Divider(
                color: Colors.grey[300],
                indent: 30,
                endIndent: 30,
              ),
              const ListTile(
                leading: Icon(Icons.favorite),
                title: Text("favorite"),
              ),
              Divider(
                color: Colors.grey[300],
                indent: 30,
                endIndent: 30,
              ),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("share"),
              ),
              Divider(
                color: Colors.grey[300],
                indent: 30,
                endIndent: 30,
              ),
              const ListTile(
                leading: Icon(Icons.cabin),
                title: Text("about us"),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        //----------------------------------------------------------------------
        //add s first add
        child: Column(
          children: [
            SizedBox(
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
                            onPressed: () {},
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
                                    builder: (context) => SearchPage()));
                              },
                              icon: Icon(Icons.safety_check)),
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
            ),
            const TitleApp(),
            Container(
              height: size.height / 3.5,
              width: bodyMargin,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                    image: AssetImage(
                      'images/How.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(height: 8),
            //------------------------------------------------------------------
            //camera phons airpods
            CameraPhoneAirpodList(size: size),
            const TitleApp2(),
            FirstListViewBuilder(size: size),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 8,
              ),
              child: Divider(
                thickness: 1,
                indent: 50,
                endIndent: 50,
              ),
            ),
            SecondListViewBuilder(size: size),
            const TitleApp3(),
            //------------------------------------------------------------------
            // phone brands
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage('images/xiaomi.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 100,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage('images/Samsung-Logo.webp'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage('images/apple.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 100,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('images/huawei.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const TitleApp4(),
            DigiKalaCard(size: size),
            //-----------------------------------------------------------------
            // phone of the Week
            const TitleApp5(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 170,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: DecorationImage(
                        image: AssetImage("images/z-fold.webp"),
                        fit: BoxFit.cover)),
              ),
            ),
            const TitleApp6(),
            //------------------------------------------------------------------
            // TEC News
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 100,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage('images/Modren.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 100,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage('images/global.webp'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 100,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage('images/shut.webp'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage('images/isom.webp'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const TitleApp7(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 170,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: DecorationImage(
                        image: AssetImage("images/z-fold.webp"),
                        fit: BoxFit.cover)),
              ),
            ),
            const TitlApp8(),
            DigiKalaCard2(size: size),
            Padding(
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
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class DigiKalaCard2 extends StatelessWidget {
  const DigiKalaCard2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(16),
      color: Colors.teal[100],
      child: SizedBox(
        height: size.height / 1.8,
        width: double.maxFinite,
        child: ListView.builder(
            itemCount: digiList2.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(5, 16, 5, 16.0),
                child: Container(
                  height: size.height / 1.9,
                  width: size.width / 2.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(digiList2[index].imageU),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: index == 0
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))
                        : BorderRadius.circular(0),
                  ),
                ),
              );
            })),
      ),
    );
  }
}

class DigiKalaCard extends StatelessWidget {
  const DigiKalaCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(16),
      color: Colors.teal[100],
      child: SizedBox(
        height: size.height / 1.8,
        width: double.maxFinite,
        child: PageView.builder(
            itemCount: digiList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(5, 16, 5, 16.0),
                child: Container(
                  height: size.height / 1.9,
                  width: size.width / 1.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(digiList[index].imageU),
                          fit: BoxFit.cover),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      )),
                ),
              );
            })),
      ),
    );
  }
}

class SecondListViewBuilder extends StatelessWidget {
  const SecondListViewBuilder({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: shoppingList2.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 16 : 5, right: index == 10 ? 16 : 5),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 5.0,
                    width: size.width / 2.9,
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const BuyPage2()))),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            image: DecorationImage(
                              image: NetworkImage(shoppingList2[index].imageUr),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(shoppingList2[index].model),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class FirstListViewBuilder extends StatelessWidget {
  const FirstListViewBuilder({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: shoppingList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 16 : 5, right: index == 7 ? 16 : 5),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 5.0,
                    width: size.width / 2.9,
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BeuyPage())),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            image: DecorationImage(
                              image: NetworkImage(shoppingList[index].imageUrl),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      shoppingList[index].model,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

// ignore: must_be_immutable
class CameraPhoneAirpodList extends StatelessWidget {
  CameraPhoneAirpodList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: titleList.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                click = !click;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SellingPage()));
              },
              child: Container(
                height: size.height / 10,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade700,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: const Offset(2, 2),
                      )
                    ],
                    color: click == true ? Colors.red : Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Text(
                    titleList[index].title,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
