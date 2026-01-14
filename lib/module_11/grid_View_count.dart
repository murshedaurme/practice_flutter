import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  const Grid_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: Text('Grid View', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow,
      ),
      
      body: GridView.count(
          crossAxisCount:4,
      mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(20, (index){
          return Card(
            elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            color: Colors.pinkAccent,child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call,color: Colors.white,),
              Text('Call',style: TextStyle(color: Colors.white),)
            ],
          ),
            
          );
          
          
        }),
      
      
      )
    );
  }
}
