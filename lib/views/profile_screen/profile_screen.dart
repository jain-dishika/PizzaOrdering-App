import 'package:my_app/consts/consts.dart';
import 'package:my_app/consts/lists.dart';
import 'package:my_app/controllers/auth_controller.dart';
import 'package:my_app/views/auth_screen/loginScreen.dart';
import 'package:my_app/views/profile_screen/Components/details_card.dart';
import 'package:my_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
         
        // padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            // edit profile
            Padding(padding: const EdgeInsets.all(8.0),
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.edit, color: whiteColor),
            ).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
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
                  onPressed: () async{
                    await Get.put(AuthController()).signoutMethod(context);
                    Get.offAll(()=> const LoginScreen());
                  },
                  child: logout.text.fontFamily(semibold).white.make(),
                )
              ],
            ),
            ),
            
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              detailsCard(count: "00", title: "in your cart", width: context.screenWidth/3.4),
              detailsCard(count: "32", title: "in your wishList", width: context.screenWidth/3.2),
              detailsCard(count: "675", title: "in your orders", width: context.screenWidth/3.2),
            ],),

            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index){
                return const Divider(
                  color: lightGrey,
                );
              },
              itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: Image.asset(profileButtonsIcon[index], width: 22),
                  title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                );
              },
            ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),
          ],
        ),
      ),
    ));
  }
}
