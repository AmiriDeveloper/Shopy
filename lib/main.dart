import 'package:flutter/material.dart';
import 'package:shopy/model/internet_data.dart';
import 'package:shopy/view/baince.dart';
import 'package:shopy/view/pages/buey_page.dart';
import 'package:shopy/view/drawer_box.dart';
import 'package:shopy/view/pages/favorit_page.dart';
import 'package:shopy/view/splash_screen.dart';
import 'package:shopy/view/stables/Stable_classes.dart';

import 'card_screen.dart';
import 'view/stables/stable_class.dart';
import 'view/stables/my_stables.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var text = Theme.of(context).textTheme;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //CardScreen()
          //FavoriPage() // SplashScren()
          ShopyApp(),
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
      drawer: BoxOfDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        //----------------------------------------------------------------------
        //add s first add
        child: Scrollbar(
          child: Column(
            children: [
              BoxOfAppBar(size: size),
              const TitleSecApp(),
              SizedBox(
                  height: size.height / 3,
                  width: double.infinity,
                  child: const Baince()),
              //this one its for moving pics aotumaticly
              /*  Padding(
                padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Carousel(
                    images: const [
                      NetworkImage(
                          "https://previews.123rf.com/images/starlineart/starlineart1702/starlineart170200485/72033194-discount-voucher-and-banner-design-template-with-space-to-add-your-details.jpg"),
                      NetworkImage(
                          "https://i.pinimg.com/originals/80/14/a2/8014a2326ceabcaafd3bd127b81d7b7b.jpg"),
                      NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/013/191/457/small/black-friday-sale-banner-design-design-background-for-media-promotion-and-social-media-post-with-copy-space-for-add-photo-product-vector.jpg"),
                      NetworkImage(

                          "https://isenselabs.com/img/uploads/instagram-youtube-banner_37873e1e65.png")
                    ],
                    animationDuration: Duration(milliseconds: 100),
                  ),
                ),
              ),*/
              const SizedBox(height: 8),
              //------------------------------------------------------------------
              //camera phons airpods
              CameraPhoneAirpodList(size: size),
              const TitleSecApp(),
              SizedBox(
                height: size.height / 4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sho.getRange(0, 7).length,
                    itemBuilder: (context, index) {
                      return ListViewBuilder(
                          size: size,
                          itemIndex: index,
                          product: sho[index],
                          selictedIndex: () {
                            //  Get.to(BuyPage(product: shoppingList[index]));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BuyPage()));
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
                  itemCount: sho.length,
                  itemBuilder: (context, index) => ListViewBuilder(
                    size: size,
                    itemIndex: index,
                    product: sho[index],
                    selictedIndex: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BuyPage()));
                    },
                  ),
                ),
              ),
              const TitleSecApp(),

              //------------------------------------------------------------------
              // phone brands
              const PhoneBrands(),
              const TitleSecApp(),
              //-----------------------------------------------------------------
              // phone of the Week
              const TitleSecApp(),
              const StiableContainer(image: "images/z-fold.webp"),
              const TitleSecApp(),
              //------------------------------------------------------------------
              // TEC News
              const TecNews(),
              const SizedBox(height: 15),
              const TitleSecApp(),
              const StiableContainer(image: "images/Samsung.jpg"),
              const TitleSecApp(),
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
