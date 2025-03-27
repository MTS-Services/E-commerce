
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

import 'widget/amount_details.dart';
import 'widget/delivery_method_container.dart';
import 'widget/shipping_address_container.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: MyCustomText(
          tName: "Order",
          letterSpacing: 2,
          fSize: 30,
          fWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCustomText(
              tName: "Shipping Address",
              fSize: 22,
              fWeight: FontWeight.w700,
              letterSpacing: 1,
            ),

            /// people address container
            ///
            ShippingAddressContainer(),

            /// people address container

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCustomText(
                  tName: "Payment",
                  fSize: 20,
                  fWeight: FontWeight.w700,
                ),
                TextButton(
                  onPressed: () {
                    // Handle change address
                  },
                  child: MyCustomText(
                      tName: "change",
                      fSize: 18,
                      fWeight: FontWeight.w700,
                      color: Colors.deepOrange),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(2, 5),
                        )
                      ]),
                  child: Center(
                    child: Image.asset("assets/images/payment/mastercard.png"),
                  ),
                ),
                MyCustomText(
                  tName: "**** **** **** 3947",
                  fSize: 16,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            MyCustomText(
              tName: "Delivery Method",
              fSize: 22,
              fWeight: FontWeight.bold,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeliveryMethodContainer(
                    image: 'assets/images/payment/fedex.png',
                    tName: "2-3 days"),
                DeliveryMethodContainer(
                    image: 'assets/images/payment/Слой 2.png',
                    tName: "2-3 days"),
                DeliveryMethodContainer(
                    image: 'assets/images/payment/dhl.png', tName: "2-3 days"),
              ],
            ),
            SizedBox(height: 16),

            /// order-delivery-summary
            ///
            AmountDetails(),

            /// order-delivery-summary
            SizedBox(
              height: 50,
            ),
            MyCustomButton(
              tName: "Submit Order",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
