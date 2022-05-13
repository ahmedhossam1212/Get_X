import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 1"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(child: TextButton(
                onPressed: (){
                  Get.offAll(const PageTwo());
                },
                child: const Text("Page2")),
            ),

          ],
        ),
      ),
    );
  }
}