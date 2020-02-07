//. the GPS class - just contains the GPS 
//TODO Integrate the Map

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';

class GPS extends StatefulWidget {
  @override
  _GPSState createState() => _GPSState();
}

class _GPSState extends State<GPS> {

  var _lat, _long, _alt, _orient;
  var geolocator = Geolocator();
  var _locationOptions = LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);


  updatePos(_l,_lo,_or,_alt){
    setState(() {
      _lat = _l;
      _long = _lo;
      _orient = _or;
      _alt = _alt;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    StreamSubscription<Position> positionStream = geolocator.getPositionStream(_locationOptions).listen(
    (Position position) {
        if(position != null){
          updatePos(position.latitude.toString(), position.longitude.toString(), position.heading.toString(), position.altitude.toString());
        }
    });
    return Container(
      child: Center(child: Text("$_lat,$_long @ $_orient", style: TextStyle(fontSize: 20),),),
      
    );
  }
}