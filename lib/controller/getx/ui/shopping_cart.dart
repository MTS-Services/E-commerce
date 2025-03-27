import 'package:ecommarces_app/utils/const/data/cart_items.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    cartItems.assignAll(cartItemsData); // Assign initial cart data
  }

  int get totalAmount => cartItems.fold<int>(
        0,
        (sum, item) =>
            sum + ((item['price'] as int) * (item['quantity'] as int)),
      );

  void updateQuantity(int index, int change) {
    if (cartItems[index]['quantity'] + change >= 1) {
      cartItems[index]['quantity'] += change;
      cartItems.refresh(); // Ensures UI updates
    }
  }
}
