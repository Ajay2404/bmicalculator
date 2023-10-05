import 'package:bmicalculator/postmethod.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  PostData postDataCtrl;

  NextPage(this.postDataCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network("rimg:${postDataCtrl.ResponseData!.dboydata!.email}"),
      ]),
    );
  }
}
