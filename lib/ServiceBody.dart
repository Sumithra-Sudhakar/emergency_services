import 'package:flutter/material.dart';
import 'Upload.dart';

class ServiceBody extends StatefulWidget {
  const ServiceBody({Key? key}) : super(key: key);

  @override
  _ServiceBodyState createState() => _ServiceBodyState();
}

class _ServiceBodyState extends State<ServiceBody> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
       home:  Scaffold(
         backgroundColor: Color(0xffCBBBE6),
         body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

SizedBox(
  height: MediaQuery.of(context).size.height*0.1,
),
                    ElevatedButton(onPressed:  (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReportCrime()));
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                          shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular( 30.0),

                    ),
                      ),
                        child: Column(
                          children: [
                            Image.asset(
                                'assets/police.jpg',
                                  height: 200,
                              width: 200,
                              ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Text(
                              "POLICE SERVICE",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                          ],
                        ),
                        ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    ElevatedButton(onPressed:  (){  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReportCrime()));},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 30.0),

                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/fireman.jpg',
                            height: 200,
                            width: 200,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                          Text(
                            "FIRE SERVICE",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    ElevatedButton(onPressed:  (){  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReportCrime()));},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 30.0),

                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/doctor.jpg',
                            height: 200,
                            width: 200,
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                          Text(
                            "MEDICAL SERVICE",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


       ),
    );
  }
}
