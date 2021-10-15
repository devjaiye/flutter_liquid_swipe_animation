import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final page = [
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFF6984F1),
            Color(0xFF5B16D0),
            Color(0xFF5036D5),
            Color(0xFF3594DD),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/travel_logo.png"),
          ),
          const SizedBox(height: 15,),
          const Text("Travel+",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
          const SizedBox(height: 15,),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius
                    .circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.email,color: Colors.black,),
                  SizedBox(width: 10,),
                  Text("enter email",style: TextStyle(
                      color: Colors.black26,fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius
                    .circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.lock,color: Colors.black,),
                  SizedBox(width: 10,),
                  Text("*******",style: TextStyle(
                      color: Colors.black26,fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          )

        ],
      ),
    ),
    Container(
      //color: Colors.cyanAccent[100],
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
              width:420,
              child: Image.asset("assets/beacharea.jpg",fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: const <Widget>[
                Text("Select Destination",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87),),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            leading:Container(
              width: 90,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/beachsunset.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title:const Text("Madrid",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
            subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis egestas eros a placerat tristique.",
              style: TextStyle(
                fontSize: 16,color: Colors.grey),),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading:Container(
              width: 90,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/beachtropical.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title:Text("New York",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis egestas eros a placerat tristique.",
              style: TextStyle(
                fontSize: 16,color: Colors.grey),),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading:Container(
              width: 90,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/beacharea.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title:Text("Berlin",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis egestas eros a placerat tristique.",style: TextStyle(
                fontSize: 16,color: Colors.grey),),
          ),

        ],
      ),
    ),
    Container(
      color: Color(0xFFEED9A3),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),

          Image.asset("assets/planefly.png"),
          SizedBox(height: 30,),
          const Text('Travel Booked Successful',
            style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,fontWeight: FontWeight.bold),overflow: TextOverflow
                .ellipsis,),
          SizedBox(height: 10,),

          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing \n "
              "elituis egestas eros a placerat tristique.",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white),overflow: TextOverflow
                .ellipsis,textAlign: TextAlign.center,),
        ],
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:LiquidSwipe(
          pages: page,
          enableLoop: true,
          fullTransitionValue: 300,
          //enableSlideIcon: true,
          slideIconWidget: const Icon(Icons.arrow_back_ios_outlined),
          //enableSideReveal: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}