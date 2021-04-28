import 'package:flutter/material.dart';
import 'package:flutter_flashlight/flutter_flashlight.dart';

class HomePage extends StatefulWidget{
  @override
   _HomePageState createState() => _HomePageState();
  }

class _HomePageState extends State<HomePage> {
  var isON= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flaş"),
         centerTitle: true,
        backgroundColor: Color(0xFF1A237E),
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/WhatsApp-Image-2021-04-19-at-20.21.22.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Transform.rotate(
            angle: 0,
            child: Transform.scale(
              scale: 3.0,
                child: FloatingActionButton(
                  backgroundColor: isON!=false?Colors.blueAccent:Colors.yellow,
                  onPressed:(){
                    setState(() {
                      isON=isON!=false?false:true;
                      print(isON);
                      isON!=false ? Flashlight.lightOn() :Flashlight.lightOff();
                    });
                  },

                  child: Icon(
                      Icons.power_settings_new_rounded

                  ),
                )
            ),
          )
        ),
      ),

    );
  }

}