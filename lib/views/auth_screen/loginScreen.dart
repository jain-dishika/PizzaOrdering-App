import 'package:my_app/consts/consts.dart';
import 'package:my_app/consts/lists.dart';
import 'package:my_app/controllers/auth_controller.dart';
import 'package:my_app/views/auth_screen/signUp.dart';
import 'package:my_app/views/home_screen/home.dart';
import 'package:my_app/widgets_common/applogo_widget.dart';
import 'package:my_app/widgets_common/bg_widget.dart';
import 'package:my_app/widgets_common/customTextfield.dart';
import 'package:my_app/widgets_common/ourButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());

    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children:[
            (context.screenHeight*0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(email, emailHint, controller.emailController, false),
                customTextField(password, passwordHint, controller.passwordController, true),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),
                ourButton(color: redColor, title: login, textColor: whiteColor, onPress: ()async{
                  await controller.loginMethod(context: context).then((value){
                    if(value!=null){
                      VxToast.show(context, msg: loggedIn);
                      Get.offAll(()=>const Home());
                    }
                  });
                }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(color: lightGolden, title: signup, textColor: redColor, onPress: (){
                   Get.to(()=> const SignUpScreen());
                }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0), 
                   child: CircleAvatar(
                    backgroundColor: lightGrey,
                    radius: 25,
                    child: Image.asset(
                      socialIconList[index],
                      width: 30,
                    ),
                  ),
                )),
                ),
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
          ]
        )
      ),
    ));
  }
}