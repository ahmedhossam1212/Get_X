import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route/page_one.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 2"),
      ),

      body: Column(
        children: [
          TextButton(onPressed: (){
            Get.off(const PageOne());
          }, child: const Text("page1")),
        ],
      )  ,
    );
  }
}