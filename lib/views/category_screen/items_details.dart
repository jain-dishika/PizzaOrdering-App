import 'package:flutter/material.dart';
import 'package:my_app/consts/colors.dart';
import 'package:my_app/consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key?key,required this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share,)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline,)),
        ],
      ),
      body: Container(),
    );
  }
}
