import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'signup.dart';
import 'tools.dart';
import 'main_page.dart';

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeX8k7dUKajhJjQ4Iev7hv3HP3NUt3ogYobQ&s",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: Image.network(
                  "https://buy-obs.line-scdn.net/0hcxGx3AVaPFd6AS_ayNJDAClVMDcFLydVEz8jLw1aYy8EbgNKLWUQbCB3IyArR35JPTgPOQ9eEmQsbhsJLRUYMT5kFTwEMgRIFAEPNQ1KAScrRAtdFgJydw",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ), 
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  homepage_button_model(
                    text: "登入",
                    on_tap: (){
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (context) => sign_in()),
                      );
                    }, 
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  homepage_button_model(
                    text: "註冊",
                    on_tap:(){
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    }, 
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}