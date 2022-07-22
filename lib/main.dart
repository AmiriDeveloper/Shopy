import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopy/model/internet_data.dart';
import 'package:shopy/model/shopping_list.dart';
import 'package:shopy/view/search_page.dart';
import 'controller/stable_class.dart';
import 'model/my_stables.dart';
import 'package:shopy/model/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var text = Theme.of(context).textTheme;

    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //BeuyPage(),
          //SearchPage()
          //  SellingPage()
          const ShopyApp(),
    );
  }
}

class ShopyApp extends StatefulWidget {
  const ShopyApp({
    Key? key,
  }) : super(key: key);

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
            SizedBox(
              height: size.height / 4,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shoppingList.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilder(
                      size: size,
                      itemIndex: index,
                      image: shoppingList[index].imageUrl,
                      text: shoppingList[index].model,
                    );
                  }),
            ),
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

            SizedBox(
              height: size.height / 4,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shoppingList.length,
                  itemBuilder: (context, index) {
                    return ListViewBuilder(
                      size: size,
                      itemIndex: index,
                      image: shoppingList2[index].imageUr,
                      text: shoppingList2[index].model,
                    );
                  }),
            ),
            const TitleApp3(),
            //------------------------------------------------------------------
            // phone brands
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: GridView.builder(
                    itemCount: pic.length,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 100.0,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage(pic[index].pictuer),
                              fit: BoxFit.cover),
                        ),
                      );
                    }),
              ),
            ),
            const TitleApp4(),
            /* SizedBox(
                height: size.height / 1.8,
                width: double.maxFinite,
                child: PageView.builder(
                    itemCount: digiList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return DigiKalaCard(size: size, list: digiList[index]);
                    }))),*/
            //-----------------------------------------------------------------
            // phone of the Week
            const TitleApp5(),
            const StiableContainer(image: "images/z-fold.webp"),
            const TitleApp6(),
            //------------------------------------------------------------------
            // TEC News
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: GridView.builder(
                    itemCount: pik.length,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 100.0,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage(pik[index].pictuer),
                              fit: BoxFit.cover),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TitleApp7(),
            const StiableContainer(image: "images/Samsung.jpg"),
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
