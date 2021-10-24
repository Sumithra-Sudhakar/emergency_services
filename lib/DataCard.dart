
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DataCard extends StatelessWidget {
  DataCard(this.heading, this.subHeading, this.imageUrl,
      this.startingColor, this.endingColor);

  final String heading;
  final String subHeading;
  final String imageUrl;
  final Color startingColor;
  final Color endingColor;

  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [startingColor, endingColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xBC000000),
                blurRadius: 5.0,
              ),
            ],
          ),
          child: new Material(
            borderRadius: BorderRadius.circular(20),
            child: new InkWell(
              splashColor: Color(0x7EFFFFFF),
              hoverColor: Color(0xABFFFFFF),
              focusColor: Color(0x86FFFFFF),
              highlightColor: Color(0x3CFFFFFF),
              borderRadius: BorderRadius.circular(20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left:20, right: 10,top: 100,bottom:50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(heading,
                              style: GoogleFonts.montserrat(
                                  fontSize:20, color: Colors.white)),
                          Text(subHeading,
                              style: GoogleFonts.montserrat(
                                  fontSize:15, color: Color(0xFFDCDCDC))),
                        ],
                      ),
                    ),
                    flex: 6,
                  ),
                ],
              ),
            ),
            color: Colors.transparent,
          ),
        ),
      ),
    ));
  }
}
