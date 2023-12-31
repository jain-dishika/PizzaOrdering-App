import 'package:flutter/material.dart';
import 'package:my_app/consts/consts.dart';
import 'package:my_app/consts/lists.dart';
import 'package:my_app/views/category_screen/category_details.dart';
import 'package:my_app/widgets_common/bg_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            appBar: AppBar(
              title: categories.text.fontFamily(bold).white.make(),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 200,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          categoriesImages[index],
                          height: 120,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        10.heightBox,
                        categoriesList[index]
                            .text
                            .size(15)
                            .color(darkFontGrey)
                            .align(TextAlign.center)
                            .make()
                            .onTap(() {
                          Get.to(() =>
                              CategoryDetails(title: categoriesList[index]));
                        }),
                      ],
                    )
                        .box
                        .white
                        .rounded
                        .clip(Clip.antiAlias)
                        .outerShadowSm
                        .make();
                  }),
            )));
  }
}
