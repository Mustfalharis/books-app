


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){
            Get.back();
          },
          icon:const Icon(Icons.close) ,
        ),
        const Spacer(),
        IconButton(
          onPressed: (){

          },
          icon:const Icon(Icons.shopping_cart_outlined) ,
        ),
      ],
    );
  }
}