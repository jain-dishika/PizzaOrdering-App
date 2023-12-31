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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                                imgFc3,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              );
                            }),

                        10.heightBox,
                        // title and details section
                        Align(
                                alignment: Alignment.centerLeft,
                                child: title!.text
                                    .size(25)
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .make())
                            .paddingSymmetric(horizontal: 12),
                        10.heightBox,
                        // rating
                        Align(
                                alignment: Alignment.centerLeft,
                                child: VxRating(
                                    onRatingUpdate: (value) {},
                                    normalColor: textfieldGrey,
                                    selectionColor: golden,
                                    count: 5,
                                    size: 20,
                                    stepInt: true))
                            .paddingSymmetric(horizontal: 12),

                        10.heightBox,
                        Align(
                                alignment: Alignment.centerLeft,
                                child: "\Rs.300"
                                    .text
                                    .color(golden)
                                    .fontFamily(bold)
                                    .size(15)
                                    .make())
                            .paddingSymmetric(horizontal: 12),

                        20.heightBox,
                        // 10.heightBox,
                        Align(
                                alignment: Alignment.centerLeft,
                                child: "Description"
                                    .text
                                    .size(18)
                                    // .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .make())
                            .paddingSymmetric(horizontal: 12),
                        10.heightBox,
                        Align(
                                alignment: Alignment.centerLeft,
                                child: "This is dummy item and content lorem"
                                    .text
                                    .color(darkFontGrey)
                                    .make())
                            .paddingSymmetric(horizontal: 12),

                        // Row(
                        //   children: [
                        //     Expanded(
                        //         child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         "Seller".text.white.fontFamily(semibold).make(),
                        //         5.heightBox,
                        //         "In house brands"
                        //             .text
                        //             .fontFamily(semibold)
                        //             .color(darkFontGrey)
                        //             .size(16)
                        //             .make(),
                        //       ],
                        //     )),
                        //     const CircleAvatar(
                        //         backgroundColor: Colors.white,
                        //         child: Icon(
                        //           Icons.message_rounded,
                        //           color: darkFontGrey,
                        //         )),
                        //   ],
                        // )
                        //     .box
                        //     .height(60)
                        //     .padding(const EdgeInsets.symmetric(horizontal: 16))
                        //     .color(textfieldGrey)
                        //     .make(),

                        20.heightBox,
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Quantity :"
                                      .text
                                      // .color(textfieldGrey)
                                      .make(),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove)),
                                    "0"
                                        .text
                                        .size(16)
                                        .color(darkFontGrey)
                                        .fontFamily(bold)
                                        .make(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add)),
                                    10.widthBox,
                                    "(0 available)"
                                        .text
                                        // .color(textfieldGrey)
                                        .make(),
                                  ],
                                ),
                              ],
                            ).box.padding(const EdgeInsets.all(12)).make(),
                            // 20.widthBox,
                            // Row(
                            //   children: [
                            //     SizedBox(
                            //       width: 100,
                            //       child: "Total :"
                            //           .text
                            //           // .color(textfieldGrey)
                            //           .make(),
                            //     ),
                            //     "\Rs.0.0"
                            //         .text
                            //         .color(golden)
                            //         .size(16)
                            //         .fontFamily(bold)
                            //         .make(),
                            //   ],
                            // )
                            //     .box
                            //     .white
                            //     .shadowSm
                            //     .margin(const EdgeInsets.all(5))
                            //     .padding(
                            //         const EdgeInsets.symmetric(horizontal: 12))
                            //     .make(),
                            // ],
                            // ).box.padding(const EdgeInsets.all(8)).make(),
                          ],
                        ).box.white.shadowSm.make(),

                        10.heightBox,
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: "Total :"
                                      .text
                                      // .color(textfieldGrey)
                                      .make(),
                                ),
                                "\Rs.0.0"
                                    .text
                                    .color(golden)
                                    .size(16)
                                    .fontFamily(bold)
                                    .make(),
                              ],
                            )
                                .box
                                .white
                                .height(45)
                                .shadowSm
                                // .margin(const EdgeInsets.all(5))
                                .padding(
                                    const EdgeInsets.symmetric(horizontal: 12))
                                .make(),
                          ],
                        ).box.white.shadowSm.make(),

                        // description section

                        // adding topings

                        // Row(
                        //   children: [
                        //     SizedBox(width: 10,),
                        //     Text("onions",style: TextStyle(fontSize: 17),),
                        //     Checkbox(value: this.valueFirst, onChanged: onChanged)
                        //   ],
                        // ),
                        // 20.heightBox,
                        // "Pizzas you make like"
                        //     .text
                        //     .fontFamily(bold)
                        //     .size(16)
                        //     .color(darkFontGrey)
                        //     .make(),

                        // SingleChildScrollView(
                        //   scrollDirection: Axis.horizontal,
                        //   child: Row(
                        //       children: List.generate(
                        //           6,
                        //           (index) => Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   Image.asset(
                        //                     imgP1,
                        //                     width: 150,
                        //                     fit: BoxFit.cover,
                        //                   ),
                        //                   10.heightBox,
                        //                   "Laptop"
                        //                       .text
                        //                       .fontFamily(semibold)
                        //                       .color(lightGrey)
                        //                       .make(),
                        //                   10.heightBox,
                        //                   "\$600"
                        //                       .text
                        //                       .color(redColor)
                        //                       .fontFamily(bold)
                        //                       .size(16)
                        //                       .make()
                        //                 ],
                        //               )
                        //                   .box
                        //                   .white
                        //                   .margin(const EdgeInsets.symmetric(
                        //                       horizontal: 4))
                        //                   .rounded
                        //                   .padding(const EdgeInsets.all(9))
                        //                   .make())),
                        // ),
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
