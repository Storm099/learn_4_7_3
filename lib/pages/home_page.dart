import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatefulWidget {
 static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text("Storm1_007"),
      ),

      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print("Opened"),
        onClose: () => print("Closed"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        shape: CircleBorder(),
        children: [

          SpeedDialChild(
            child: Icon(Icons.message),
            label: "Message",
            labelStyle: TextStyle(fontSize: 18.0),
            backgroundColor: Colors.blueAccent,
            onTap: () => print("Message pressed")

          ),
          SpeedDialChild(
            child: Icon(Icons.call),
            label: "Call",
            labelStyle: TextStyle(fontSize: 18.0),
            backgroundColor: Colors.purple,
            onTap: () => print("Call pressed"),
            foregroundColor: Colors.red,
            labelBackgroundColor: Colors.pink

          ),
          SpeedDialChild(
            child: Icon(Icons.video_call),
            label: "Video call",
            labelStyle: TextStyle(fontSize: 18.0),
            backgroundColor: Colors.green,
            onTap: () => print("Video Call pressed")

          ),


        ],
      ),
    );
  }
}
