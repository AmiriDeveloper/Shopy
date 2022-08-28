import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopy/model/internet_data.dart';

class BuyPage extends StatelessWidget {
  BuyPage({Key? key, required this.product}) : super(key: key);
  final Shop product;
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
                            product.model,
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(product.imageUrl),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
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
                          onPressed: (() => Navigator.pop(context)),
                          icon: const Icon(
                            CupertinoIcons.arrow_left,
                            color: Colors.black,
                          ),
                        ),
                      ),
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
                              child: SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Memory"),
                                    Text(product.memory),
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
                              child: SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Ram"),
                                    Text(product.ram),
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
                              child: SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Pixel"),
                                    Text(product.pixel),
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
                                  "${product.price} \$",
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
                              child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      //   isScrollControlled: true,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(15))),
                                      context: context,
                                      builder: (context) => Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  height: 300,
                                                  width: 150,
                                                  child: (
                                                      //bug ------------
                                                      Image.network(
                                                    product.imageUrl,
                                                    fit: BoxFit.fitHeight,
                                                  )),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  height: 300,
                                                  width: 170,
                                                  child: Column(
                                                    children: [
                                                      const Spacer(),
                                                      Text(
                                                        product.model,
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      Text(
                                                        product.price,
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const Spacer(),
                                                      const Text(
                                                        "Samsung s22",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const Spacer(),
                                                      const Text(
                                                        "Samsung s22",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const Spacer(),
                                                      ElevatedButton(
                                                          onPressed: () {},
                                                          child: const Text(
                                                              "Buy Now"))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ));
                                },
                                icon: const Icon(
                                  CupertinoIcons.right_chevron,
                                  color: Colors.black,
                                ),
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
