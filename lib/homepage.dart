import 'package:flutter/material.dart';

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
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ), 
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: (){

                    }, 
                    child: Text("登入"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){

                    }, 
                    child: Text("註冊"),
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