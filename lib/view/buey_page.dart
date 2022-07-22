// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopy/model/internet_data.dart';
import 'package:shopy/main.dart';

void main() {
  runApp(const BeuyPage());
}

class BeuyPage extends StatelessWidget {
  const BeuyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: New());
  }
}

class New extends StatefulWidget {
  const New({
    Key? key,
  }) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  int _pickedIndex = 0;
  double imageSize = 55;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 1.6,
                width: double.infinity,
                //color: Colors.cyan,
                child: Stack(children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.chevron_right_sharp),
                          Text(
                            shoppingList[_pickedIndex].model,
                            style: const TextStyle(
                                backgroundColor: Colors.cyan, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle),
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Container(
                      height: size.height / 1.8,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("images/class.png"),
                            /*  NetworkImage(shoppingList[_pickedIndex].imageUrl),*/
                            //    fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                    ),
                  ]),
                  //--------------- Top Icon Botton ----------------///
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: IconButton(
                          onPressed: (() => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const MyApp()))),
                          icon: const Icon(
                            CupertinoIcons.arrow_left,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 20,
                    child: SizedBox(
                      height: size.height / 2,
                      width: 90,
                      //--------------  List View  builder -----------------//
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: shoppingList.length,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _pickedIndex = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      height: _pickedIndex == index
                                          ? imageSize + 15
                                          : imageSize,
                                      width: _pickedIndex == index
                                          ? imageSize + 15
                                          : imageSize,
                                      duration:
                                          const Duration(milliseconds: 100),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: const DecorationImage(
                                            image:
                                                AssetImage("images/class.png"),
                                            /* NetworkImage(
                                            shoppingList[index].imageUrl),*/
                                            //  fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          })),
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.cyan,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //---------------- card 1  ---------------//
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                      color: Color.fromARGB(60, 0, 0, 0),
                                      width: 1)),
                              child: Container(
                                height: 90,
                                width: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Memory"),
                                    Text(shoppingList[_pickedIndex].memory),
                                  ],
                                ),
                              )),
                          //------------------------ card 2  ----------------//
                          Card(
                              //  margin: EdgeInsets.all(50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                      color: Color.fromARGB(60, 0, 0, 0),
                                      width: 1)),
                              child: Container(
                                height: 90,
                                width: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Ram"),
                                    Text(shoppingList[_pickedIndex].ram),
                                  ],
                                ),
                              )),
                          //-------------- card 3 -------------------//
                          Card(
                              //  margin: EdgeInsets.all(50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                      color: Color.fromARGB(60, 0, 0, 0),
                                      width: 1)),
                              child: Container(
                                height: 90,
                                width: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Pixel"),
                                    Text(shoppingList[_pickedIndex].pixel),
                                  ],
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///------------ price $ title -----------//
                                const Text(
                                  "Total Price",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "${shoppingList[_pickedIndex].price} \$",
                                  style: const TextStyle(
                                    fontSize: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 55,
                              height: 55,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: const Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
