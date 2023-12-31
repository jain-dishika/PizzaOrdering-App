import 'package:flutter/material.dart';
import 'package:my_app/consts/lists.dart';
import 'package:my_app/views/category_screen/items_details.dart';
import 'package:my_app/widgets_common/bg_widget.dart';
import 'package:my_app/consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      6,
                      (index) => categoriesList[index]
                          .text
                          .size(15)
                          .fontFamily(bold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .size(150, 60)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .make())),
            ),

            // items container
            30.heightBox,

            Expanded(
                // child: Container(
                // color: lightGrey,
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgFc3,
                            height: 150,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                          "Pizza".text.fontFamily(semibold).make(),
                          10.heightBox,
                          "\Rs.250"
                              .text
                              .color(golden)
                              .fontFamily(bold)
                              .size(14)
                              .make()
                        ],
                      )
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .rounded
                          .padding(const EdgeInsets.all(9))
                          .make()
                          .onTap(() {
                        Get.to(() => const ItemDetails(title: "Dummy title"));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
