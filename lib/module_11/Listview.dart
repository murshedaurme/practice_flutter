import 'package:flutter/material.dart';


class List_View extends StatelessWidget {
  const List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List View', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pink,
      ),
      body:ListView(
        children: [
          Card(
            child:
            ListTile(
              leading: Icon(Icons.call,color: Colors.green,),
              trailing: Icon(Icons.delete,color: Colors.red,),
              title: Text('Urme',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('098765788'),
            ),
          )
        ],

      ),







    );
  }
}
