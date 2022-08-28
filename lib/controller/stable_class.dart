import 'package:flutter/material.dart';

import '../model/internet_data.dart';
import '../model/shopping_list.dart';
import '../view/selling_page.dart';

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
                  width: size.width / 1.15,
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
  const DigiKalaCard({Key? key, required this.size, required this.list})
      : super(key: key);

  final Size size;
  final Digi list;

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
                          image: NetworkImage(list.imageU
                              //  digiList[index].imageU
                              ),
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

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.product,
    required this.selictedIndex,
  }) : super(key: key);

  final int? itemIndex;
  final Size size;
  final Shop? product;
  final Function()? selictedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      //   left: index == 0 ? 16 : 5, right: index == 7 ? 16 : 5),
      child: Column(
        children: [
          SizedBox(
            height: size.height / 5.0,
            width: size.width / 2.9,
            child: InkWell(
              onTap: selictedIndex,
              // Navigator.of(context).push(
              // MaterialPageRoute(builder: (context) => const BeuyPage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    image: DecorationImage(
                      image: NetworkImage(product!.imageUrl),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Text(product!.model),
          ),
        ],
      ),
    );
  }
}

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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SellingPage()));
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
                    color: Colors.white,
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

class StiableContainer extends StatelessWidget {
  const StiableContainer({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 170,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
 
  /*Positioned(
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
                                          image: DecorationImage(
                                            image:
                                                //  AssetImage("images/class.png"),
                                                NetworkImage(shoppingList[index]
                                                    .imageUrl),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          })),
                    ),
                  ),*/