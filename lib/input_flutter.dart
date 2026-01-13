import 'package:flutter/material.dart';

class Input_Flutter extends StatelessWidget {
  const Input_Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    //2ta field tai 2ta controller
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Input'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              maxLength: 11,
              cursorColor: Colors.blue,
controller: phoneController,
              cursorHeight: 20,
              keyboardType: TextInputType.phone,

              decoration: InputDecoration(
                hintText: 'Enter Your Number',
                 hintStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black12),
                  labelText: 'Phone Number',
                helperText: 'Enter phone',
                helperStyle: TextStyle(color: Colors.blueGrey),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),


                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blueAccent)
                ),enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue)
              ),focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.green,width: 2)
              ),
                    filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(30),
              ),
            ),

            SizedBox(height: 25,),

            TextField(
              maxLength: 8,
              cursorColor: Colors.blue,
              controller: passwordController,
              cursorHeight: 20,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                hintStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black12),
                labelText: 'Password',
                helperText: 'Enter Password',
                helperStyle: TextStyle(color: Colors.blueGrey),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),


                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blueAccent)
                ),enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue)
              ),focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.green,width: 2)
              ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(30),
              ),
            ),

            SizedBox(height: 25,),


            SizedBox(width: double.infinity,
              child: ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
                  backgroundColor: Colors.green,foregroundColor: Colors.white),
                  onPressed: (){
                print(phoneController.text);
                print(passwordController.text);

                //submit ar por valur clean ar jonne

                    phoneController.clear();
                    passwordController.clear();
                  }, child: Text('Submit')),
            )
          ],
        ),
      ),
    );
  }
}
