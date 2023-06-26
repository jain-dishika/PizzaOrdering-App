import 'package:my_app/consts/consts.dart';
import 'package:my_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // edit profile
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.edit,color: whiteColor),
            ).onTap((){

            }),
            Row(
              children: [
                Image.asset(imgProfile2, width: 130, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy user".text.fontFamily(semibold).white.make(),
                    "customer@example.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                    color: whiteColor,
                  )),
                  onPressed: () {},
                  child: logout.text.fontFamily(semibold).white.make(),
                )
              ],
            ),
            20.heightBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
                5.heightBox,
                "in your cart".text.color(darkFontGrey).make(),
              ],
            ).box.white.rounded.width(context.screenWidth /3.2).height(60).padding(const EdgeInsets.all(4)).make(),
          ],
        ),
      )),
    ));
  }
}
