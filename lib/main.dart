import 'package:flutter/material.dart';
import 'package:shopy/model/internet_data.dart';
import 'package:shopy/view/baince.dart';
import 'package:shopy/view/pages/buey_page.dart';
import 'package:shopy/view/drawer_box.dart';
import 'package:shopy/view/pages/favorit_page.dart';
import 'package:shopy/view/splash_screen.dart';
import 'package:shopy/view/stables/Stable_classes.dart';

import 'view/stables/stable_class.dart';
import 'view/stables/my_stables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var text = Theme.of(context).textTheme;

    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FavoriPage() // SplashScren() //ShopyApp(),
        );
  }
}

class ShopyApp extends StatelessWidget {
  const ShopyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // double bodyMargin = size.width / 1.1;

    return Scaffold(
      drawer: BoxOfDrawer(size: size),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        //----------------------------------------------------------------------
        //add s first add
        child: Scrollbar(
          child: Column(
            children: [
              BoxOfAppBar(size: size),
              const TitleApp(),
              SizedBox(
                  height: size.height / 3,
                  width: double.infinity,
                  child: const Baince()),
              const SizedBox(height: 8),
              //------------------------------------------------------------------
              //camera phons airpods
              CameraPhoneAirpodList(size: size),
              const TitleApp2(),
              SizedBox(
                height: size.height / 4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: shoppingList.getRange(0, 7).length,
                    itemBuilder: (context, index) {
                      return ListViewBuilder(
                          size: size,
                          itemIndex: index,
                          product: shoppingList[index],
                          selictedIndex: () {
                            //  Get.to(BuyPage(product: shoppingList[index]));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BuyPage(product: shoppingList[index])));
                          });
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
                  itemBuilder: (context, index) => ListViewBuilder(
                    size: size,
                    itemIndex: index,
                    product: shoppingList[index],
                    selictedIndex: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BuyPage(product: shoppingList[index])));
                    },
                  ),
                ),
              ),
              const TitleApp3(),
              //------------------------------------------------------------------
              // phone brands
              const PhoneBrands(),
              const TitleApp4(),
              //-----------------------------------------------------------------
              // phone of the Week
              const TitleApp5(),
              const StiableContainer(image: "images/z-fold.webp"),
              const TitleApp6(),
              //------------------------------------------------------------------
              // TEC News
              const TecNews(),
              const SizedBox(height: 15),
              const TitleApp7(),
              const StiableContainer(image: "images/Samsung.jpg"),
              const TitlApp8(),
              //------------------------------------------------------------------
              //
              DigiKalaCard2(size: size),
              AllElectronicThings(size: size),
              ShareWidget(size: size),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
