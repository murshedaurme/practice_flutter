import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Appbar",),
        centerTitle: true,
backgroundColor: Colors.red,
      ),body:
      SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Column(crossAxisAlignment: CrossAxisAlignment.end
                ,
                children: [Text("toto", style: TextStyle(fontSize: 20,color: Colors.red),),
                Text("toto", style: TextStyle(fontSize: 20,color: Colors.red),),Text("toto", style: TextStyle(fontSize: 20,color: Colors.red),),
                Text("toto", style: TextStyle(fontSize: 20,color: Colors.red),),Text("toto", style: TextStyle(fontSize: 20,color: Colors.red),),Text("toto", style: TextStyle(fontSize: 20,color: Colors.red),),],),
                Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
                Text(" app", style: TextStyle(fontSize: 20,color: Colors.blue),),
                Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
                Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
                Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
                Text(" app", style: TextStyle(fontSize: 20,color: Colors.blue),),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
            Text(" app", style: TextStyle(fontSize: 20,color: Colors.blue),),
            Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
            Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
            Text("app", style: TextStyle(fontSize: 20,color: Colors.blue),),
            Text(" app", style: TextStyle(fontSize: 20,color: Colors.blue),),],),
              ],
            ),
                   ),
         );


  }
}
