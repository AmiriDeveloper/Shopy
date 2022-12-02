import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopy/tablet_scafflod.dart';

import 'desktop_scaffold.dart';
import 'mobile_scaffold.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    //  double screenHeight = MediaQuery.of(context).size.height;
    // var text = Theme.of(context).textTheme;

    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //
        home: // MainPage()
            ResposiveLayout(
                mobileScaffold: MobileScaffold(),
                tabletScaffold: TabletScaffold(),
                desktopScaffold: DesktopScaffold())
        //CardScreen()
        //    MyWidget()
        // FavoriPage() // SplashScren()
        //   ShopyApp(),
        );
  }
}

class ResposiveLayout extends StatelessWidget {
  const ResposiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
