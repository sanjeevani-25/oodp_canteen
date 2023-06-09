// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// // import 'package:final_app/utils/colors.dart';

// class WalletPage extends StatelessWidget {
//   const WalletPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.loginbgColor,
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:final_app/utils/colors.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff6D2113).withOpacity(0.1),
        
        // appBar: AppBar(
        //     backgroundColor: Color(0xff6D2113),
        //     title: Text("Dashboard"),
        //   ),
        body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Group.png"),
            fit: BoxFit.cover,
          ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff6D2113),
                  ),
                  height: deviceheight * .355,
                  width: devicewidth,

                  // width: 200,

                  child: Column(
                    children: [
                      SizedBox(
                            height: deviceheight*.03,
                          ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 130),
                        child: Text(
                          "Balance",
                          // textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 45, color: Colors.white),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: devicewidth * .05,
                          ),
                          Image(
                            image: NetworkImage(
                                'https://s3-alpha-sig.figma.com/img/a816/a302/1441e7083f5d4e2e8c26b0260142c554?Expires=1671408000&Signature=Va-Pu9~gii4kSfj-~Gg-3ZqXdnBYenKE~EkkcdKI-gefgDSFc4W0Uv2sLoYpE5N5JUbwxm1rFB--Z4hoEVwcqaLx3Az0C8O4jF0L1mmTcWg3H~sw9Elj4b3h-FkjzjwUzcTtCQuShdGdn72anQva~3Tq7KFhlyDSjqLI6lONDzKbDDzIKZ7B3aVRpu8CF~mhA8o7caKSTkwOsC7rwQ-bpWx-kS0stHfwedEjmlHMy4YrFYOhhTus09KcwQ0KpuaA2GplXWB0wngkFaCWKgj1KujAoCAFVSEGIDs7QTmZJmF7wm2-aH0VuFW4upbcP7y54WnS~ppxtmASZ7HcDV9lsw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                            // fit: BoxFit.fill,
                            height: deviceheight * .25,
                            width: devicewidth * .25,
                          ),
                          SizedBox(
                            width: devicewidth * .05,
                          ),
                          Text(
                            "1000",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),

                          // Text("Helllo"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration( 
                   color: Color.fromRGBO(109, 33, 19, 1).withOpacity(0.2),
                   borderRadius:BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Transtion History",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
