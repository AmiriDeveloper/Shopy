import 'package:get/get.dart';
import 'package:shopy/model/internet_data.dart';

class CardController extends GetxController {
  final _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
        "Product add", "You have added the ${product.model} to the card",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2));
  }

  get products => _products;
}
