import 'package:flutter/material.dart';

class SolidColors {
  static const Color appBarColorBlue = Color.fromARGB(255, 0, 32, 255);

  static const Color dividerColor = Color.fromARGB(255, 112, 112, 112);
}

class GradiantColrs {
  static const List<Color> bottomNAV = [
    Color.fromARGB(255, 25, 0, 94),
    Color.fromARGB(255, 68, 4, 87)
  ];
  static const List<Color> bottomNAVback = [
    Color.fromARGB(0, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255)
  ];

  static const List<Color> posterCoverGradiant = [
    Color.fromARGB(0, 0, 0, 0),
    Color.fromARGB(195, 72, 20, 88),
    Color.fromARGB(255, 28, 20, 81)
  ];
}

class GadGets extends StatelessWidget {
  const GadGets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
      // fontFamily: 'Roboto',
      textTheme: const TextTheme(
          headline1: TextStyle(
            // fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          headline2: TextStyle(
            // fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headline3: TextStyle(
            //  fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: SolidColors.appBarColorBlue,
          )),
    ));
  }
}
