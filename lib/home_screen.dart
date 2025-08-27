import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.5,
            width: screenWidth,
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(
                        screenHeight * 0.3,
                        screenHeight * 0.06,
                      ),
                      bottomRight: Radius.elliptical(
                        screenHeight * 0.3,
                        screenHeight * 0.06,
                      ),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff429690), Color(0xff2A7C76)],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Image.asset("assets/home_bg.png"),
                      Positioned(
                        top: screenHeight * 0.07,
                        left: screenWidth * 0.05,
                        right: screenWidth * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good afternoon,",
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.019,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Enjelin Morgeana",
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.025,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/notification_icons.svg",
                              height: screenHeight * 0.05,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.16,
                  left: screenWidth * 0.04,
                  right: screenWidth * 0.04,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.016,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff2A7C76),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total Balance",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.022,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.016),
                                    SvgPicture.asset(
                                      "assets/top_forward.svg",
                                      height: screenHeight * 0.03,
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$ 2,548.00",
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.026,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: screenWidth * 0.03,
                                top: screenHeight * 0.015,
                              ),
                              child: SvgPicture.asset(
                                "assets/three_dots.svg",
                                height: screenHeight * 0.007,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset("assets/decrement.svg"),
                                    SizedBox(width: screenWidth * 0.012),
                                    Text(
                                      "Income",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.018,
                                        color: Color(0xffD0E5E4),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: screenWidth * 0.02,
                                    top: screenHeight * 0.009,
                                  ),
                                  child: Text(
                                    "\$ 1,840.00",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.024,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset("assets/increment.svg"),
                                    SizedBox(width: screenWidth * 0.012),

                                    Text(
                                      "Expenses",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.018,
                                        color: Color(0xffD0E5E4),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(
                                    left: screenWidth * 0.05,
                                    top: screenHeight * 0.009,
                                  ),
                                  child: Text(
                                    "\$ 284.00",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.024,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
