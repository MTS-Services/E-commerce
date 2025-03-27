import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/controller/getx/ui/brand_search.dart';
import 'package:ecommarces_app/views/pages/womenTops/women_tops_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandSearchPage extends StatefulWidget {
  const BrandSearchPage({super.key});

  @override
  State<BrandSearchPage> createState() => _BrandSearchPageState();
}

class _BrandSearchPageState extends State<BrandSearchPage> {
  final BrandController brandController = Get.put(BrandController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: MyCustomText(
          tName: "Brand List",
          fWeight: FontWeight.w600,
          fSize: 24,
          letterSpacing: 3,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                onChanged: brandController.updateSearchQuery,
                decoration: InputDecoration(
                  hintText: "Search brands...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              if (brandController.filteredBrands.isEmpty) {
                return Center(
                  child: MyCustomText(
                    tName: "No brands found",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.grey,
                  ),
                );
              }
              return ListView.builder(
                itemCount: brandController.filteredBrands.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Get.to(WomenTopsPages());
                    },
                    title: MyCustomText(
                      tName: brandController.filteredBrands[index],
                      fSize: 18,
                      fWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
