import 'package:flutter/material.dart';
import 'package:emergency_services/Login.dart';
import 'package:emergency_services/SignUp.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DO NOT PANIC",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFF6E6CB),
        body: Container(
          padding: EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "DO NOT PANIC!",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Color(0xFFA0937D)) ,
                ),

              ),
              SizedBox(
                height: 50,

              ),
              Row(
                children: [
                  Center(
                    child: SizedBox(
                      width:MediaQuery.of(context).size.width*0.2,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                      style:  ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 10.0),

                        ),
                        primary: Color(0xFFA0937D),
                        padding: EdgeInsets.all(15),
                        elevation: 5,
                      ),

                      child:
                      Row(
                        children: [
                          Icon( Icons.login, size: 20,),
                          Text(' Login', style: TextStyle(fontSize: 20),)
                        ],
                      )

                  ),
                  SizedBox(
                    width: 120,
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                  },
                      style:  ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 10.0),

                        ),
                        primary: Color(0xFFA0937D),
                        padding: EdgeInsets.all(15),
                        elevation: 5,
                      ),

                      child:
                      Row(
                        children: [
                          Icon( Icons.sticky_note_2_outlined, size: 20,),
                          Text(' Signup', style: TextStyle(fontSize: 20),)
                        ],
                      )

                  )
                ],
              )
            ],
          ),

        ),

      ),
    );
  }
}
