import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'tools.dart';
import 'api_service.dart';

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

  bool _loading = false;

  Future<void> _sign_up() async
  {
    setState(() => _loading=true);
    final res=await ApiService.register(
      name: form_controllers['name']!.text.trim(),
      password: form_controllers['pass']!.text,
      phone: form_controllers['phone_num']!.text.trim(),
      birthday: form_controllers['birthday']!.text.trim(),
      email: form_controllers['email']!.text.trim(),
    );
    setState(() => _loading=false);
    print(res);
  }

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
                _sign_up();
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