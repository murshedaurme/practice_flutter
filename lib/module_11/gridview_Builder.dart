import 'package:flutter/material.dart';

class Gridview_Builder extends StatelessWidget {
  const Gridview_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,mainAxisSpacing: 10,
            crossAxisSpacing:20
          ),
          itemCount: 20,
          itemBuilder: (context , index){
        return Container(
height: 200,
          width: 200,alignment: Alignment.center,
          color: Colors.green[100*((index%7)+1)],
          child: Text('Hellow'),
        );
          }),




    );
  }
}
