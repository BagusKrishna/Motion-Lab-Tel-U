import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/menu.png',
              width: 23,
              height: 23,
            ),
            Image.asset(
              'assets/LOGO_STARBUK.png',
              width: 58,
              height: 59,
            ),
            Image.asset(
              'assets/tas.png',
              width: 23,
              height: 23,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(29, 45, 29, 23.53),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: GoogleFonts.raleway(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    height: 1.7,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'Our way of Loving\n'),
                    TextSpan(text: 'you back'),
                  ],
                ),
              ),
              SizedBox(
                height: 39.47,
              ),
              Container(
                width: 382,
                height: 53,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(26.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFF868A91),
                      ),
                    ),
                    SizedBox(width: 16.64),
                    Text(
                      'Search',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF161B28).withOpacity(0.58),
                        height: 1.26,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23.53,
              ),
              Container(
                width: double.infinity,
                height: 53,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 92,
                        height: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF00623B),
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 122,
                        height: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Center(
                          child: Text(
                            'Coffee',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 122,
                        height: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Center(
                          child: Text(
                            'Tea',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 122,
                        height: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Center(
                          child: Text(
                            'Drink',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 122,
                        height: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(22.5),
                        ),
                        child: Center(
                          child: Text(
                            'Food',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
                Container(
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                          color: Color(0xFF00623B),
                        ),
                      ),
                    ],
                 ),
               ),
              
            ],
          ),
        ),
      ),
    );
  }
}
