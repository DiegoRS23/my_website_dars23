import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _isHovering = [false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width * 0.8, 1000),
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "DARS23",
                      style: GoogleFonts.quicksand(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              _isHovering[0] = value;
                            });
                          },
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'About Me',
                                style: GoogleFonts.quicksand(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: _isHovering[0]
                                        ? Colors.orange
                                        : Colors.black),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[0],
                                child: Container(
                                  height: 2,
                                  width: 60,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 50),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              _isHovering[1] = value;
                            });
                          },
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'My Projects',
                                style: GoogleFonts.quicksand(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: _isHovering[1]
                                        ? Colors.orange
                                        : Colors.black),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[1],
                                child: Container(
                                  height: 2,
                                  width: 60,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
