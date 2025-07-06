import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'tools.dart';

class signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return signupstate(); 
  }
}

class signupstate extends State<signup>{
  final Map<String, TextEditingController> form_controllers ={
    "name":TextEditingController(),
    "pass":TextEditingController(),
    "comfirm_pass":TextEditingController(),
    "email":TextEditingController(),
    "phone_num":TextEditingController(),
    "birthday":TextEditingController(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            sign_input(
              controller: form_controllers["name"]!,
              text: "使用者姓名",
            ),

            SizedBox(
              height: 10,
            ),

            sign_input(
              controller: form_controllers["pass"]!,
              text: "密碼",
            ),

            SizedBox(
              height: 10,
            ),
            
            sign_input(
              controller: form_controllers["comfirm_pass"]!,
              text: "確認密碼",
            ),

            SizedBox(
              height: 10,
            ),

            sign_input(
              controller: form_controllers["email"]!,
              text: "電子郵件",
            ),

            SizedBox(
              height: 10,
            ),

            sign_input(
              controller: form_controllers["phone_num"]!,
              text: "手機號碼",
            ),

            SizedBox(
              height: 10,
            ),

            sign_input(
              controller: form_controllers["birthday"]!,
              text: "生日",
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => sign_in()),
                );
              }, 
              style: ElevatedButton.styleFrom (
                side:BorderSide(color:Colors.black),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                backgroundColor: Colors.white,
              ),
              child: Text(
                "註冊",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}