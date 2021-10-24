import 'dart:io';
import 'dart:math';

import 'package:emergency_services/DataCard.dart';
import 'package:emergency_services/global.dart' as globals;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ReportCrime extends StatefulWidget {
  const ReportCrime({Key? key}) : super(key: key);

  @override
  _ReportCrimeState createState() => _ReportCrimeState();
}

class _ReportCrimeState extends State<ReportCrime> {

  File? image,cameraImage;
  String? latitude,longitude;

  Future<void> uploadFile(String filePath) async {

    File file = File(filePath);

    try {

      Random random = new Random();
      int fileId = random.nextInt(100);
      await FirebaseStorage.instance
          .ref("uploads/$fileId.jpeg")
          .putFile(file);
    } on FirebaseException catch (e) {
      // e.g, e.code == 'canceled'

      // TODO: Do something with this exception
    }
  }

  void pickImage() async{
    final image = await ImagePicker().pickImage(source:  ImageSource.gallery);

    if(image==null) return;

    final imageTemporary = File(image.path);
    setState(() {
      this.image = imageTemporary;
    });

  }

  void pickImageFromCamera() async{
    final image = await ImagePicker().pickImage(source:  ImageSource.camera);

    if(image==null) return;

    final imageTemporary = File(image.path);
    setState(() {
      this.cameraImage = imageTemporary;
    });

  }

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
            GestureDetector(
              onTap: ()=> pickImageFromCamera(),
              child: DataCard(
                  'Upload picture',
                  'The picture will be useful for law enforcement.',
                  '/assets/image_01.png',
                  globals.textColor,
                  globals.buttonColor),
            ),
            GestureDetector(
              onTap: ()=> pickImage(),
              child: DataCard(
                  'Upload from gallery',
                  'The picture will be useful for law enforcement.',
                  '/assets/image_01.png',
                  globals.textColor,
                  globals.buttonColor),
            ),
            GestureDetector(
              onTap: ()=>getLocation(),
              child: DataCard(
                  'Share Location',
                  'Location will be shared with law enforcement',
                  '/assets/image_02.png',
                  globals.textColor,
                  globals.buttonColor),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

 // void getLocation() async{
 //    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
 //    var lat = position.latitude;
 //    var long = position.longitude;
 //
 //
 //    setState(() {
 //      latitude = "$lat";
 //      longitude = "$long";
 //    });
 // }


}

