

import 'package:flutter/material.dart';

class Text_from_field extends StatelessWidget {
  const Text_from_field ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey =GlobalKey<FormState>();


    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Text From Field',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),

    body:Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(children: [
        Image.network('https://th.bing.com/th/id/R.0e2f3d4a2aa010eb1ed0e2657db4cdb0?rik=BFEV15OmdDOGOQ&riu=http%3a%2f%2fimages1.convertly.com%2fdf1de040-fe74-11ea-85bb-ab0005476dd7%2feyJ2IjoxfQ%3d%3d%2ffacebook-1.png&ehk=IjZG4mcmtQUWaAOkQaWvOkg4Ixmkg6rqIQ%2bGBZyvvDU%3d&risl=&pid=ImgRaw&r=0',
        height: 100,width: 100,),SizedBox(height: 10,),
          Image.asset('asset/2.jpg',height: 100,width: 500,),SizedBox(height: 10,),
          
          Text('Login with phone number and password',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300,fontSize: 20),),
        
          SizedBox(height: 20,),
        
          Form(key: _formKey,
        
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 11,
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText:'Phone Number',labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintText: 'Enter your phone number',
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 4),borderRadius: BorderRadius.circular(20))
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return'Please enter your phone number';
                      }else if(value.length!=11){
                        return'Please enter correct phone number';
                      }else{return null;}
                    },
                  ),SizedBox(height: 10,),
                  TextFormField(
                    maxLength: 8,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText:'Password',labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: 'Enter your password',
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 4),borderRadius: BorderRadius.circular(20))
                    
                    ),validator: (value){if(value==null || value.isEmpty){
                      return'Please enter your password';
                  }else if (value.length<8){return'Please enter must atlest 8 character';}else{return null;}
                  },
                  ),SizedBox(height: 20,),
                  SizedBox(
              width: double.infinity,
                    height: 40,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        onPressed: (){if(_formKey.currentState!.validate()){
                          print(phoneController.text);
                          print(passwordController.text);
                          phoneController.clear();
                          passwordController.clear();
                        }
                    
                        }, child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),


SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text('Container',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(color: Colors.blue,border: Border.all(color: Colors.black87,width: 2),
                        borderRadius: BorderRadius.circular(20),boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(10, 10),
                          ), BoxShadow(
                            color: Colors.redAccent.withOpacity(0.3),
                            offset: Offset(5, 5),
                          )
                        ]),
                  ),

                  SizedBox(height: 20,),
                  
                  
                  Card(color: Colors.orangeAccent,

                    child: Text('This is Card',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),),)
                  
                  
                  
                ],
                    
                    
                    
                    
              ))
        ],),
      ),
    ) ,


    );
  }
}
