import 'package:flutter/material.dart';
class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(title: Text("This is button"),backgroundColor: Colors.blue,centerTitle: true,),

      body: Center(child:
      Column(
        children: [
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2))
      ),
          onPressed: () {} , child: Text("Submit")) ,
          SizedBox(height: 20,) ,

          ElevatedButton(onPressed: () {}, child:Text('123')) ,
                SizedBox(height: 20,) ,
               SizedBox(width: double.infinity,
                height:  70 ,
      
                 child: ElevatedButton(style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.greenAccent,
                     foregroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(2))
                              ),
                   onPressed: () {} , child: Text("Submit")),
               ) ,
                 SizedBox(height: 20,) ,
          OutlinedButton(onPressed: () {}, child: Text('outline button'))  ,     SizedBox(height: 20,) , 
          TextButton(onPressed: (){}, child: Text("Read More",style: TextStyle(color: Colors.red),))   ,  SizedBox(height: 20,) , 
          Icon(Icons.phone) ,  SizedBox(height: 20,) , 
          IconButton(onPressed: (){}, icon: Icon(Icons.delete, size: 30,color: Colors.red,))

        
      ],)),
    );
  }
}


