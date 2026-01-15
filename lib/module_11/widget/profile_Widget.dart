import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {



  const ProfileWidget({


    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(radius: 100,
        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmvJ14anYdkKq4d0LRhRh0a_u_Kh6DUQGHsQ&s',
          height: 200,width: 200,),),
      Positioned(top: 150,left: 150,
        child: Container(height: 40,width: 40,
          decoration: BoxDecoration(border: BoxBorder.all(color: Colors.white,width: 5),
              color: Colors.green,shape: BoxShape.circle
          ),
        ),
      )
    ],);
  }
}