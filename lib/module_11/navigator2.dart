import 'package:flutter/material.dart';
class Navigator2 extends StatelessWidget {
  const Navigator2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('Navigation 2',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
      body: Center(
        child: Column(
          children: [Text('Come from Navigator 1'),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
              Navigator.pop(context);
                }, child: Icon(Icons.arrow_back,color: Colors.white,)),
          ],
        ),
      ),
      
      
    );
  }
}
