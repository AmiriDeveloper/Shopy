import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Baince extends StatefulWidget {
  const Baince({Key? key}) : super(key: key);
  @override
  State<Baince> createState() => _BainceState();
}

class _BainceState extends State<Baince> {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
    keepPage: false,
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 1.1;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: size.height / 3.5,
              width: bodyMargin,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: 6,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage(
                                'images/How.jpg',
                              ),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.pink,
                          ),
                        ),
                      )),
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            axisDirection: Axis.horizontal,
            count: 6,
            effect: const WormEffect(),
          ),
        ],
      ),
    );
  }
}
