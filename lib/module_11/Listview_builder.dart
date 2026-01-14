import 'package:flutter/material.dart';


class List_View_Builder extends StatelessWidget {
  const List_View_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return Container(alignment: Alignment.center,
              width: 120,
              color: Colors.blue[100*((index%8)+1)],
              child: Text('Your Urme here $index', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),





            );
          }),
    );
  }
}
