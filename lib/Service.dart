import 'package:flutter/material.dart';
import 'ServiceBody.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Whose help do you need now?")),
          backgroundColor:Color(0xff7833FE) ,
        ),
        backgroundColor: Color(0xffCBBBE6),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.only(top:50.0),
            decoration: BoxDecoration(color: Color(0xffCBBBE6)),
            child: Column(
              children: [
                Expanded(child:  makeProfileAvatar()),
              ],
            ),
          ),

        ),
        body:    ServiceBody()
      ),
    );


  }
}


makeProfileAvatar(){
  return Column(
    children: [
      CircleAvatar(
        radius: 60.0,
        backgroundImage:  AssetImage('police.jpg'),
      ),
      SizedBox(height: 20),
      Center(
        child: Text(
          "Sumithra Sudhakar",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      Center(
        child: Text("Coimbatore, India",
          style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.normal

          ),
        ),
      ),
      SizedBox(height: 20),
       Text(
          "ID number: 1234567890",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,

          ),
        ),

      SizedBox(height: 20),
         Text(
          "Points:250",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,

          ),

      ),
      SizedBox(height: 100,),
      Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            primary: Color(0xff7833FE),
            padding: EdgeInsets.all(15),
            elevation: 5,
          ),
          label: Text('Log Out'),
          onPressed: () {


          },
          icon: Icon(Icons.logout),
        ),
      ),
    ],
  );
}



