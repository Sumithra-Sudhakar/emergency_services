import 'package:emergency_services/Home.dart';
import 'package:emergency_services/Service.dart';
import 'package:emergency_services/ServiceBody.dart';
import 'package:flutter/material.dart';
import 'ServiceBody.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Service(),
    ),
  ));
}



