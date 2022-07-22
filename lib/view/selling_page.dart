import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopy/main.dart';
import 'package:shopy/model/my_stables.dart';

import '../model/my_stables.dart';

class SellingPage extends StatelessWidget {
  const SellingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                width: double.infinity,
                height: size.height / 2.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: size.height / 13,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => const ShopyApp())));
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
                    ),
                    const TitleApp(),
                    SizedBox(
                      height: size.height / 3.0,
                      width: double.infinity,
                      child: PageView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
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
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Consol 194 Result",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 5, 5, 0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 1000,
                        child: GridView.builder(
                            physics: const ClampingScrollPhysics(),
                            itemCount: 50,
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 3,
                              crossAxisSpacing: 3,
                              crossAxisCount: 2,
                              mainAxisExtent: 200,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
