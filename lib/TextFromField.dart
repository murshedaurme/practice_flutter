import 'package:flutter/material.dart';

class Text_from_field extends StatelessWidget {
  const Text_from_field ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Text From Field',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),

    body:Column(children: [

      Image.asset('asset/1.jpg',height: 100,width: 100,)
    ],) ,


    );
  }
}
