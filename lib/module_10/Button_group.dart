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
          IconButton(onPressed: (){}, icon: Icon(Icons.delete, size: 30,color: Colors.red,)),
// likha clickable korar jonne
        GestureDetector(onTap: (){ print('Tap on test');},
            onDoubleTap: (){print(' double tap tesst');},
            onLongPress: (){print('long press test ');},
            child: Text('this is button',style: TextStyle(color: Colors.redAccent,fontSize: 45,),
            )
        ),

          //GestureDetector a kono effect nai, inkWell a effect ase
          InkWell(onTap: (){print('on tap inkwell'); },
            child: Text('this is button22',style: TextStyle(color: Colors.redAccent,fontSize: 45,),
            ),
          )




      ],)),floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,foregroundColor: Colors.white,
      onPressed: (){print('Clicked on pressed');},child: Icon(Icons.add),),
    );
  }
}


