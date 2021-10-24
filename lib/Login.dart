import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Service.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<UserCredential> signIn() async {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: nameController.text,
        password: passwordController.text
    );

    return await FirebaseAuth.instance.signInWithEmailAndPassword(email: nameController.text,password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffCBBBE6),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Log in',
                              style: GoogleFonts.gentiumBasic(
                                fontStyle: FontStyle.normal,
                                fontSize: 50,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7833FE),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            cursorColor: Color(0xff7833FE),
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: const BorderSide(
                                    color: Color(0xff7833FE), width: 2.0),
                              ),
                              labelText: 'Username',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            cursorColor: Color(0xff7833FE),
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: const BorderSide(
                                    color: Color(0xff7833FE), width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: const BorderSide(
                                    color: Color(0xff7833FE), width: 2.0),
                              ),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              primary: Color(0xff7833FE),
                              padding: EdgeInsets.all(15),
                              onPrimary: Color(0xffF3EAC2),
                              elevation: 5,
                            ),
                            label: Text('Log In'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Service()));
                            },
                            icon: Icon(Icons.assignment_turned_in),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          textColor: Color(0xff6C4A4A),
                          child: Text(
                            'Forgot Password',
                            style: GoogleFonts.gentiumBasic(
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6C4A4A),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Container(
                            child: Row(
                          children: <Widget>[
                            Text(
                              'Do not have an account?',
                              style: GoogleFonts.gentiumBasic(
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6C4A4A),
                              ),
                            ),
                            FlatButton(
                              textColor: Colors.blue,
                              child: Container(
                                child: Row(
                                  children: [
                                    Text('Sign Up',
                                        style: GoogleFonts.gentiumBasic(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7833FE),
                                        )),
                                    Container(
                                      width: 10,
                                    ),
                                    Icon(Icons.arrow_drop_down_circle_outlined,
                                        color: Color(0xff7833FE))
                                  ],
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUp()));
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}