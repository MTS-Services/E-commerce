
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/controller/getx/ui/shopping_cart.dart';
import 'package:ecommarces_app/views/pages/submitPage/submit_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My Bag",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    var item = cartController.cartItems[index];
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Image.network(item["image"],
                                width: 80, height: 80, fit: BoxFit.cover),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyCustomText(
                                    tName: item["name"],
                                    fSize: 18,
                                    fWeight: FontWeight.bold,
                                  ),
                                  MyCustomText(
                                    tName:
                                        "Color: ${item["color"]}  Size: ${item["size"]}",
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                                Icons.remove_circle_outline),
                                            onPressed: () => cartController
                                                .updateQuantity(index, -1),
                                          ),
                                          MyCustomText(
                                            tName: "${item['quantity']}",
                                            fSize: 18,
                                          ),
                                          IconButton(
                                            icon:
                                                Icon(Icons.add_circle_outline),
                                            onPressed: () => cartController
                                                .updateQuantity(index, 1),
                                          ),
                                        ],
                                      ),
                                      MyCustomText(
                                        tName:
                                            "\$${(item['price'] * item['quantity'])}",
                                        fSize: 18,
                                        fWeight: FontWeight.bold,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your promo code",
                suffixIcon: Icon(Icons.arrow_forward),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomText(
                      tName: "Total amount:",
                      fSize: 18,
                      fWeight: FontWeight.bold,
                    ),
                    MyCustomText(
                      tName: "\$${cartController.totalAmount}",
                      fSize: 18,
                      fWeight: FontWeight.bold,
                    ),
                  ],
                )),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: MyCustomButton(
              tName: "CHECK OUT",
              onPressed: () {
                // Checkout logic
                Get.to(SubmitPage());
              },
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
