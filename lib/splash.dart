import 'dart:async';

import 'package:connect_ieee/signIN.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    Timer( Duration(seconds:4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>SignIN()));((route)=>false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset("images/splash.png",fit: BoxFit.cover),

      ),
    );
  }
}
