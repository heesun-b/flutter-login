import 'package:flutter/material.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/custom_text_form_field.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            minimumSize: Size(double.infinity, 60)
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
          "/login" :(context) => LoginPage(),
          "/home" :(context) => Homepage(),
      }, //routes는 map 타입 = 중괄호
    );
  }
}


class LoginPage extends StatelessWidget {

  // 1. GlobalKey 생성 : form 태그의 상태를 확인할 수 있는 key
  final _formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key); // form의 상태가 변할 때마다 읽어야할 값이 달라지므로 const 제외

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            Logo("Login"),
          Form(
            // 2. GlobalKey 연결
            key: _formKey,
            child :Column(
              children: [
                CustomTextFormField("email"),
                CustomTextFormField("password", isObscure : true),
                TextButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                  Navigator.pushNamed(context, "/home");
                  }
                }, child: Text("Login"))
              ],
            )
          ),
        ],
      ),
    ); // 변수 같은 게 없을 때 const 붙이기
  }
}


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Logo("Care Soft"),
            TextButton(onPressed: () {} , child: Text("Get Started"))
          ],
        )
    );
  }
}
