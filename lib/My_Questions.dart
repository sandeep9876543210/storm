import 'package:flutter/material.dart';
class My_Questions extends StatefulWidget {
  const My_Questions({Key? key}) : super(key: key);

  @override
  State<My_Questions> createState() => _My_QuestionsState();
}

class _My_QuestionsState extends State<My_Questions> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [

      ],
    );
  }
}
