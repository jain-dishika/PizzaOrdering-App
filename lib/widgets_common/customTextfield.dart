import 'package:my_app/consts/consts.dart';

Widget customTextField(String? title, String? hint){
  return Column(
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      10.heightBox,
      TextFormField(
        // controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder( borderSide: BorderSide(color: redColor))
        ),
      ),
        7.heightBox,
    ],
  );
}