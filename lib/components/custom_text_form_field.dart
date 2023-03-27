import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {

  final title;
  final isObscure;

  const CustomTextFormField(this.title, {this.isObscure = false, Key? key}) : super(key: key);
// 선택적 매개변수는 타입을 붙여주기
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Text(title),
    TextFormField(
      validator: (value) {
        if(value != null) {
          if(value.isNotEmpty) {
            return null;
          }
        }

        return "Please Enter Some Text";
      } ,
      // onChanged: (text){
      //   print(text);
      // },
      obscureText: isObscure,
    decoration: MyInputDecoration("Enter $title"),
    ),
    ],
    );
  }
}
