import 'package:flutter/material.dart';

class SabhaTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: [
          Image.asset(''),
          Text('عدد التسبيحات'),
          Container(
            width: 50,
            height: 50,
            child: Text(''),
          ),
          ElevatedButton(onPressed: (){}, child:Text('سبحان الله'),
          style: ButtonStyle(
            
          ),)
        ],
      ),
    );
  }
}