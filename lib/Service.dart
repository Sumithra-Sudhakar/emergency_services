import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFFA0937D) ,
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.only(top:50.0),
            decoration: BoxDecoration(color: Color(0xFFA0937D)),
            child: Column(
              children: [
                Expanded(child:  makeProfileAvatar()),
              ],
            ),
          ),
        ),
      ),
    );


  }
}


makeProfileAvatar(){
  return Column(
    children: [
      CircleAvatar(
        radius: 60.0,
        backgroundImage: NetworkImage('https://cdn.imgbin.com/23/22/24/imgbin-user-profile-avatar-woman-icon-girl-avatar-woman-illustration-kHYcNyftbXz4rQG1TDtsHcyi1.jpg'),
      ),
      SizedBox(height: 20),
      Center(
        child: Text(
          "Sumithra Sudhakar",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      Center(
        child: Text("Coimbatore, India",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
              fontWeight: FontWeight.normal

          ),
        ),
      ),
      SizedBox(height: 20),
       Text(
          "ID number: 1234567890",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),

      SizedBox(height: 20),
         Text(
          "Points:250",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),

      ),
      SizedBox(height: 100,),
      Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            primary: Color(0xFFA0937D),
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