import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopy/controller/getx_controller.dart';
import 'package:shopy/model/internet_data.dart';

class CardScreen extends StatelessWidget {
  final CardController controller = Get.find();

  CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: controller.products.lenght,
              itemBuilder: (context, int index) {
                return CartProducCard(
                  controll: controller,
                  product: controller.products.key.toList()[index],
                  quantity: controller.products.values.toList()[index],
                  index: index,
                );
              })),
    );
  }
}

class CartProducCard extends StatelessWidget {
  final CardController controll;
  final Product product;
  final int quantity;
  final int index;
  const CartProducCard(
      {Key? key,
      required this.controll,
      required this.product,
      required this.quantity,
      required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        color: Colors.white,
        height: 150,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                const Text("data"),
                Row(
                  children: const [Text("data"), Icon(Icons.abc)],
                ),
                Row(
                  children: const [Text("data"), Icon(Icons.abc)],
                ),
                Row(
                  children: const [Text("data"), Icon(Icons.abc)],
                ),
                Row(
                  children: const [Text("data"), Icon(Icons.abc)],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  child: Image.network(sho[index].imageUrl),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          controll.removeProduct(product);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                      Text("$quantity"),
                      IconButton(
                          onPressed: (() => controll.addProduct(product)),
                          icon: const Icon(Icons.add)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
