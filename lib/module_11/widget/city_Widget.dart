import 'package:flutter/material.dart';
class CityWidget extends StatelessWidget {
  final String  img,title,rating;
  const CityWidget({
    super.key, required this.img, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,width: 345,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              image:DecorationImage(
                  image: NetworkImage(img))),

        ),
        Positioned(top: 10,left: 20,
          child: Row(
            children: [
              Text(title, style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
              Icon(Icons.location_pin),
            ],
          ),
        ),Positioned(bottom: 8,right: 10,
            child: ElevatedButton(
                onPressed: (){}, child: Text(rating,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)))
      ],
    );
  }
}