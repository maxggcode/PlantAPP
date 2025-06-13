import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'signup.dart';

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
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (context) => sign_in()),
                      );
                    }, 
                    style: ElevatedButton.styleFrom (
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
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    }, 
                    style: ElevatedButton.styleFrom (
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
            ],
          ),
        ),
      ],
    );
  }
}