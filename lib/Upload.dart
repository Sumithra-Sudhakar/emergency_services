import 'package:emergency_services/DataCard.dart';
import 'package:emergency_services/global.dart' as globals;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportCrime extends StatefulWidget {
  const ReportCrime({Key? key}) : super(key: key);

  @override
  _ReportCrimeState createState() => _ReportCrimeState();
}

class _ReportCrimeState extends State<ReportCrime> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff1c1c1b),
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Text('Report a crime',
                style: GoogleFonts.abel(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            DataCard(
                'Upload picture',
                'The picture will be useful for law enforcement.',
                '/assets/image_01.png',
                UploadImage(),
                globals.textColor,
                globals.buttonColor),
            SizedBox(
              height: 30,
            ),
            DataCard(
                'Share Location',
                'Location will be shared with law enforcement',
                '/assets/image_02.png',
                Location(),
                globals.textColor,
                globals.buttonColor),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          child: Column(
        children: [
          Container(
              child: Text(
            "Item Image",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          )),
          SimpleDialogOption(
            child: Text(
              "Capture with Camera",
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {},
          ),
          SimpleDialogOption(
            child: Text(
              "Select from Gallery",
              style: TextStyle(color: Colors.green),
            ),
            onPressed: (){},
          ),
          SimpleDialogOption(
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.green),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      )),
    );
  }
}

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
