//! THIS SHIT IS NOT THE ACTUAL RECORDING PAGE

import 'package:flutter/material.dart';
import './gps.dart';
import './camera.dart';

class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GEOTag Vid"),),
      drawer: Drawer(child: Column(children: <Widget>[
        DrawerHeader(child: Text("Drawer Space"),),
        ListTile(leading: Icon(Icons.home),title: Text("Record"), onTap: () => Navigator.of(context).pop(),),
        ListTile(leading: Icon(Icons.home),title: Text("Playback"),onTap: null,)
      ],),),
      body: SafeArea(child: Column(children: <Widget>[
        Container(height: MediaQuery.of(context).size.height /2.5,child: Camera(),),
        Container(height: MediaQuery.of(context).size.height /2.5, width: MediaQuery.of(context).size.width ,child: GPS(),),
      ],),)
    );
  }
}