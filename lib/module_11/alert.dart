import 'package:flutter/material.dart';

class Alert_1 extends StatelessWidget {
  const Alert_1({super.key});

  @override
  Widget build(BuildContext context) {

    sowAlartDialog(){
      showDialog(context: context,
         barrierDismissible: false, builder: (context){
       return AlertDialog(
          title: Text('Robi Dhamaka Offer',style: TextStyle(fontWeight: FontWeight.bold),),
          content: Text('Are you get this offer?'),
          actions: [
            TextButton(onPressed: (){}, child: Text('Yes',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('No',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
          ],
        );
      });
    };


    installationBlock(){
      showDialog(context: context,barrierDismissible: false, builder: (context){
        return AlertDialog(
         title: Text('Installation Block!',style: TextStyle(fontWeight: FontWeight.bold),),
          content:Column(mainAxisSize: MainAxisSize.min,
            children: [
            Row(
              children: [
                Icon(Icons.warning_amber_outlined,color: Colors.red,size: 40,),
                SizedBox(width: 5,),
                Text('Warning',style: TextStyle(fontSize: 20),),
              ],
            ),Text('Lorem ipsum dolor sit amet, sunt in culpa qui officia deserunt mollit anim id est laborum.'
            ,style: TextStyle(color: Colors.blueGrey),),
          ],) ,
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Ok'))
          ],

        );
      });
    };

    showSimpleDialog(){
      showDialog(context: context,barrierDismissible: false, builder:(context)=>
        SimpleDialog(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Image.network('https://tse4.mm.bing.net/th/id/OIP.nf_yl2oOBDU5xsKnaR8JrgHaEo?rs=1&pid=ImgDetMain&o=7&rm=3'),
                  Text('Write your answer here: ',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                  TextField( decoration:InputDecoration(labelText: 'Answer:',
                  hintText: 'Typing..',hintStyle: TextStyle(fontSize: 10,color: Colors.grey)),
                  ),
                ],
              ),
            ),
TextButton(onPressed: (){
  Navigator.pop(context);
}, child: Text('Submit',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),)),



          ],
          elevation: 5.7,
        ));
    }


    showBottomSheet(){
      showModalBottomSheet(context: context, builder: (context)=>Container(

        child: Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 30,left: 8,right: 8),
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [

              Text('Congratulations!',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 30),),
              SizedBox(height: 10,),
              Text('Congratulations, you won 500 points',),
          SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                ElevatedButton(   style: ElevatedButton.styleFrom(elevation: 8.0,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))
                ),
                    onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancel',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green,elevation: 8.0,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))
                ),
                    onPressed: (){}, child: Text('Claim',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ],)
            ],
          ),
        ),

      ));
    };

    showLodingDialog(){showDialog(context: context, builder: (context)=>Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
          CircularProgressIndicator(),
          SizedBox(width: 10,),
          Text('Loding...')
        ],),
      ),
    ));};

    showSnackbarDialog(){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Scnakbar loading...')));
    };


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
      title: Text("Alert"),
      ),

      body: Center(
        child: Column(mainAxisAlignment:MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              sowAlartDialog();
            }, child: Text('Offer')),

            SizedBox(height: 20,),


            ElevatedButton(onPressed: (){
              installationBlock();
            }, child: Text('Installation...')),
            SizedBox(height: 20,),


            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child: Text('Answer')),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
             showBottomSheet();
            }, child: Text('Bottom Sheet')),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              showLodingDialog();
            }, child: Text('Process')),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              showSnackbarDialog();
            }, child: Text('Snackbar')),



          ],
        ),
      ),
      

      
      

    );
  }
}
