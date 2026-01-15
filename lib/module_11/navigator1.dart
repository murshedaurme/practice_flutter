import 'package:example_app/module_11/navigator2.dart';
import 'package:flutter/material.dart';
class Navigator1 extends StatelessWidget {
  final String name;
  const Navigator1({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Navigation 01',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Come from Stack'),
            Text(name),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
               onPressed: (){
                 Navigator.pop(context);
                }, child: Icon(Icons.arrow_back,color: Colors.white,)),
          ],
        ),
      ),


      //floatingActionButton: FloatingActionButton(onPressed: (){
       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navigator2()));
     // },child: Icon(Icons.arrow_right_alt_rounded),),

      //same kaj korbe, next page jawar por r back korbe na
     //removeUnit ager sob page remove kore r replacement sudhu ager 1ta page remove kore

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Navigator2())  ,(route)=>false);
      },child: Icon(Icons.arrow_right_alt_rounded),),

    );
  }
}
