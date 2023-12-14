import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Image.asset('assets/images/radio.png'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'إذاعة القرآن الكريم',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: Theme.of(context).secondaryHeaderColor,
                      size: 50,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pause,
                      color: Theme.of(context).secondaryHeaderColor,
                      size: 50,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
