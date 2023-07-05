import '../../consts/consts.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/customTextfield.dart';
import '../../widgets_common/ourButton.dart';
import 'package:my_app/controllers/auth_controller.dart';
import 'package:my_app/views/home_screen/home.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState()=> _SignupScreenState();
}

class _SignupScreenState extends State<SignUpScreen>{

  bool? isCheck = false;
  var controller = Get.put(AuthController());
  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordreTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children:[
            (context.screenHeight*0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(name, nameHint, nameController, false),
                customTextField(email, emailHint, emailController, false),
                customTextField(password, passwordHint, passwordController, true),
                customTextField(reTypePassword, passwordHint, passwordreTypeController, true),
                Row(
                  children: [
                    Checkbox(checkColor: redColor, value: isCheck, onChanged: (newValue){
                      setState(() {
                        isCheck = newValue;
                      });
                    }),
                    10.widthBox,
                    Expanded(child: RichText(text: const TextSpan(children: [
                      TextSpan(text: "I agree to the ", style: TextStyle(
                        fontFamily: regular,
                        color: fontGrey,
                      )),
                      TextSpan(text: "termAndCond ", style: TextStyle(
                        fontFamily: regular,
                        color: redColor,
                      )),
                      TextSpan(text: "&", style: TextStyle(
                        fontFamily: regular,
                        color: fontGrey,
                      )),
                      TextSpan(text: " privacyPolicy", style: TextStyle(
                        fontFamily: regular,
                        color: redColor,
                      ))
                    ],
                    )),
                    ),
                  ],),
                  5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),
                ourButton(color: isCheck == true? redColor : lightGrey, title: signup, textColor: whiteColor, onPress: () async {
                  if(isCheck != false){
                    try{
                      await controller.signupMethod(context : context, email : emailController.text , password : passwordController.text).then((value) {
                        return controller.storeUserData(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text
                         );
                      }).then((value){
                        VxToast.show(context, msg: loggedIn);
                        Get.offAll(()=> const Home());
                      });
                    }catch(e){
                      auth.signOut();
                      VxToast.show(context, msg : e.toString());
                    }
                  }
                }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).make().onTap((){
                      Get.back();
                    })
                  ],
                ),
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
          ]
        )
      ),
    ));
  }
}