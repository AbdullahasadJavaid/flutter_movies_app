import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final String text;
  final String btntext;
  final String routerName;
  const BottomText(
      {required this.text, required this.btntext, required this.routerName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, routerName);
          },
          child: Text(
            btntext,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
