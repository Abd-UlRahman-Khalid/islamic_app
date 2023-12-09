import 'package:flutter/material.dart';

class HadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/ahadeth_header_image.png'),
          Container(
            color: Theme.of(context).primaryColor,
            height: 2,
          ),
          const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Chapter one',
                style: TextStyle(fontSize: 24),
              )),
          Container(
            color: Theme.of(context).primaryColor,
            height: 2,
          ),
        ],
      ),
    );
  }
}
