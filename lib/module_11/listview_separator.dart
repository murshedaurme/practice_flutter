
import 'package:flutter/material.dart';
class List_Separator extends StatelessWidget {
  const List_Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        body: ListView.separated(
            itemBuilder: (context,index){
              return  Card(
                child:
                ListTile(
                  leading: Icon(Icons.call,color: Colors.green,),
                  trailing: Icon(Icons.delete,color: Colors.red,),
                  title: Text('Urme $index'
                    ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('098765788'),
                ),
              );
            },

            separatorBuilder:(context, index){
              return Divider(color: Colors.green[100],
              thickness: 5,);
            },

            itemCount:20),




      );
  }
}
