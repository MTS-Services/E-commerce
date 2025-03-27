
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/controller/getx/ui/women_taps_page.dart';
import 'package:ecommarces_app/views/pages/brandSearch/brand_search.dart';
import 'package:ecommarces_app/views/pages/reviewScreen/review_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(240);
}

class _CustomAppbarState extends State<CustomAppbar> {
  final WomenTopsController controller = Get.put(WomenTopsController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: Size.fromHeight(220),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.to(
                        BrandSearchPage(),
                      );
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
              MyCustomText(
                tName: "Women's tops",
                fSize: 35,
                fWeight: FontWeight.w700,
              ),
              SizedBox(
                height: screenHeight * 0.05,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: PageScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(
                              ReviewScreens(),
                            );
                          },
                          child: Container(
                            height: screenHeight * 0.2,
                            width: screenWidth * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            child: Center(
                              child: MyCustomText(
                                tName: "T-shirts",
                                color: Colors.white,
                                fWeight: FontWeight.w600,
                                fSize: 19,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                height: screenHeight * 0.04,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.filter_list),
                        MyCustomText(tName: "Filter"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.incomplete_circle),
                        MyCustomText(tName: "Price:lowest and high"),
                      ],
                    ),
                    Row(
                      children: [
                        Obx(
                          () => IconButton(
                            icon: Icon(controller.isGridView.value
                                ? Icons.list
                                : Icons.grid_view),
                            onPressed: controller.toggleView,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
