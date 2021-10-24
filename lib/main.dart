import 'package:emergency_services/Home.dart';
import 'package:emergency_services/Service.dart';
import 'package:emergency_services/Upload.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Service(),
    ),
  ));
}



