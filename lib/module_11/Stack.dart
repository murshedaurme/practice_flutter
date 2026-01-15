import 'package:example_app/module_11/navigator1.dart';
import 'package:example_app/module_11/widget/city_Widget.dart';
import 'package:example_app/module_11/widget/profile_Widget.dart';
import 'package:flutter/material.dart';

class Stack_1 extends StatelessWidget {

  const Stack_1({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      backgroundColor: Colors.black26,
      title: Text('Stack',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
body: SingleChildScrollView(
  child: Column(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CityWidget(img: 'https://t3.ftcdn.net/jpg/04/31/79/70/360_F_431797063_tUEOKpIXpBH3cG6Gx0xkE73bEiwgC3Qv.jpg',
              title: 'Home town',rating: '2.3',),
            SizedBox(width: 10,),
            ProfileWidget(),
            SizedBox(width: 10,),
            CityWidget(img: 'https://images.pexels.com/photos/290595/pexels-photo-290595.jpeg?cs=srgb&dl=pexels-pixabay-290595.jpg&fm=jpg'

             ,title: 'Canada', rating: '5.0',),
            SizedBox(width: 10,),
            CityWidget(img: 'https://images.unsplash.com/photo-1451440063999-77a8b2960d2b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y291bnRyeXxlbnwwfHwwfHx8MA%3D%3D', title: 'Bangladesh', rating: "5.0"),
            SizedBox(width: 10,),
            CityWidget(img: 'https://images.immediate.co.uk/production/volatile/sites/7/2020/10/GettyImages-520189738-b20ea44.jpg',  title: 'USA', rating: '0.6'),
            SizedBox(width: 10,),
            CityWidget(img:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQquljx1H2FgGmsYUZvFDJ61HhBcflG1lkeJQ&s',  title: 'LONDON', rating: '5.0'),
            SizedBox(width: 10,),
            CityWidget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw3BfYMiKIsjMWC1CEvsnSr8kE6fBKAFsVBg&s',  title: 'NEPAL', rating:'4.0'),
            SizedBox(width: 10,),
            CityWidget(img: 'https://plus.unsplash.com/premium_photo-1661919589683-f11880119fb7?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWF8ZW58MHx8MHx8fDA%3D',  title: 'INDIA', rating: '3.0'),
          ],
        ),
      )
    ],
  ),
),
floatingActionButton: FloatingActionButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Navigator1(name: 'Urme',)));
},child: Icon(Icons.arrow_right_alt_rounded),),

    );
  }
}



