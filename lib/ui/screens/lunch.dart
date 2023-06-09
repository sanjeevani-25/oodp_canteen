// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lunch extends StatefulWidget {
  const lunch({super.key});

  @override
  State<lunch> createState() => _lunchState();
}

int count = 0;

class _lunchState extends State<lunch> {
   int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D2113),
        title: Text("Lunch"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Group.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              //1

              Padding(
                // padding: const EdgeInsets.all(8.0),
                padding: EdgeInsets.symmetric(
                    horizontal: devicewidth * .01, vertical: 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6D2113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: deviceheight * .06,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Milk",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: devicewidth * .25,
                      ),
                      Text(
                        
                        "Rs. 50",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        // backgroundColor: Color(0xff6D2113),
                        // elevation: Elevation.none,
                        onPressed: () {
                          setState(() {});
                          counter1++;
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        //  color: Colors.white,
                      ),

                      Text(
                        '$counter1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        // backgroundColor: Color(0xff6D2113),
                        onPressed: () {
                          setState(() {});
                          counter1--;
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      )
                      // Icon(Icons.minus),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: deviceheight * .02,
              ),

              ///222
              Padding(
                // padding: const EdgeInsets.all(8.0),
                padding: EdgeInsets.symmetric(
                    horizontal: devicewidth * .01, vertical: 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6D2113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: deviceheight * .06,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Milk",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: devicewidth * .25,
                      ),
                      Text(
                        
                        "Rs. 50",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        // backgroundColor: Color(0xff6D2113),
                        // elevation: Elevation.none,
                        onPressed: () {
                          setState(() {});
                          counter2++;
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        //  color: Colors.white,
                      ),

                      Text(
                        '$counter2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        //elevation:100,
                        // backgroundColor: Color(0xff6D2113),

                        onPressed: () {
                          setState(() {});
                          counter2--;
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      )
                      // Icon(Icons.minus),
                    ],
                  ),
                ),
              ),

              //33333

              SizedBox(
                height: deviceheight * .02,
              ),
              Padding(
                // padding: const EdgeInsets.all(8.0),
                padding: EdgeInsets.symmetric(
                    horizontal: devicewidth * .01, vertical: 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6D2113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: deviceheight * .06,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Milk",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: devicewidth * .25,
                      ),
                      Text(
                        "Rs. 50",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        // backgroundColor: Color(0xff6D2113),
                        // elevation: Elevation.none,
                        onPressed: () {
                          setState(() {});
                          counter3++;
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        //  color: Colors.white,
                      ),

                      Text(
                        '$counter3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        //elevation:100,
                        // backgroundColor: Color(0xff6D2113),

                        onPressed: () {
                          setState(() {});
                          counter3--;
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      )
                      // Icon(Icons.minus),
                    ],
                  ),
                ),
              ),

              ///4
              SizedBox(
                height: deviceheight * .02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: devicewidth * .01, vertical: 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6D2113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: deviceheight * .06,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Milk",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: devicewidth * .25,
                      ),
                      Text(
                        "Rs. 50",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        // backgroundColor: Color(0xff6D2113),
                        // elevation: Elevation.none,
                        onPressed: () {
                          setState(() {});
                          counter4++;
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        //  color: Colors.white,
                      ),

                      Text(
                        '$counter4',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        //elevation:100,
                        // backgroundColor: Color(0xff6D2113),

                        onPressed: () {
                          setState(() {});
                          counter4--;
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      )
                      // Icon(Icons.minus),
                    ],
                  ),
                ),
              ),

              /////44444
              SizedBox(
                height: deviceheight * .02,
              ),
              Padding(
                // padding: const EdgeInsets.all(8.0),
                padding: EdgeInsets.symmetric(
                    horizontal: devicewidth * .01, vertical: 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6D2113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: deviceheight * .06,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "bread",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: devicewidth * .2,
                      ),
                      Text(
                        "Rs. 50",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        // backgroundColor: Color(0xff6D2113),
                        // elevation: Elevation.none,
                        onPressed: () {
                          setState(() {});
                          counter5++;
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        //  color: Colors.white,
                      ),

                      Text(
                        '$counter5',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      TextButton(
                        //elevation:100,
                        // backgroundColor: Color(0xff6D2113),

                        onPressed: () {
                          setState(() {});
                          counter5--;
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      )
                      // Icon(Icons.minus),
                    ],
                  ),
                ),
              ),

              ///
            ],
          ),
        ),
      ),
    );
  }
}
