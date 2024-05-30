import 'package:amar_school/screens/home_screen.dart';
import 'package:amar_school/screens/log_in.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 59, 90, 144),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:190, ),
                      child: Image.asset(
                        "assets/images/wlLogo.png",
                        scale: 0.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                // color: Colors.redAccent,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 59, 90, 144),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    )),
                child: Column(
                  children: [
                    Text(
                      "Learn Programming",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                        wordSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                          "No matter which field of work you want to go in, it is of great importance to learn at least one programming language.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          ),
                    ),
                    SizedBox(height: 50,),
                    Material(
                      color: Color.fromARGB(255, 14, 8, 193),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:60, vertical: 10 ),
                          child: Text(
                            "Get Start",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
