import 'package:flutter/material.dart';

class VersWidget extends StatelessWidget {
  VersWidget(this.content,this.index);

  String content;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Text(
        ' $content ($index)',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
