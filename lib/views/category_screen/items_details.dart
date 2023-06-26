import 'package:flutter/material.dart';
import 'package:my_app/consts/colors.dart';
import 'package:my_app/consts/consts.dart';
import 'package:my_app/widgets_common/ourButton.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // swiper section
                        VxSwiper.builder(
                            autoPlay: true,
                            height: 350,
                            itemCount: 3,
                            aspectRatio: 16 / 9,
                            itemBuilder: (context, index) {
                              return Image.asset(
                                imgFc5,
                                width: double.minPositive,
                                fit: BoxFit.cover,
                              );
                            }),

                        10.heightBox,
                        // title and details section
                        title!.text
                            .size(16)
                            .color(darkFontGrey)
                            .fontFamily(bold)
                            .make(),
                      ],
                    ),
                  ))),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Add to Cart",
              ))
        ],
      ),
    );
  }
}
