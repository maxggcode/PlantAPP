import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class sign_in extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return sign_instate(); 
  }
}

class sign_instate extends State<sign_in>{
  String res= "";
  Future<void> fetchpostData() async {
    final url = Uri.parse('http://127.0.0.1:5001/login');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer my_secret_key',

      },
      body: jsonEncode({
        'username': 'flutter',
        'password': '123456',
      }),
    );

    setState(() {
      if ( response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("收到資料：${data['message']}");
        res = data['message'];
      } else {
        final err = jsonDecode(response.body);
        print("錯誤：${err['message']}");
        res = "錯誤：${err['message']}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              child: Text(
                "名稱：",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Text(
                "名稱：",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),


            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                fetchpostData();
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
                "登入",
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