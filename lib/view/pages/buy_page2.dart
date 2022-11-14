import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopy/controller/getx_controller.dart';
import 'package:shopy/main.dart';
import 'package:shopy/model/internet_data.dart';

class New extends StatefulWidget {
  final CardController controller = Get.put(CardController());
   New({
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
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: size.height / 1.6,
            width: double.infinity,
            color: Colors.cyan,
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
                        sho[_pickedIndex].model,
                        style: const TextStyle(
                            backgroundColor: Colors.cyan, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(sho[_pickedIndex].imageUrl),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
              ),
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
                      itemCount: sho.length,
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
                                  duration: const Duration(milliseconds: 100),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image:
                                            NetworkImage(sho[index].imageUrl),
                                        fit: BoxFit.cover,
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
                          child: SizedBox(
                            height: 90,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Memory"),
                                Text(sho[_pickedIndex].memory),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Ram"),
                                Text(sho[_pickedIndex].ram),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Pixel"),
                                Text(sho[_pickedIndex].pixel),
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
                              "${sho[_pickedIndex].price} \$",
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
