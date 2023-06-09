// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:final_app/ui/screens/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff6D2113),
            title: Text("Dashboard"),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff6D2113).withOpacity(0.1),
                // image: DecorationImage(
                //   image: AssetImage("assets/images/Group.png").with,
                //   fit: BoxFit.cover,
                // ),
              ),
              padding: const EdgeInsets.all(16),
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: devicewidth * .3,
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          ExactAssetImage('assets/images/profile_pic.jpg'),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange.withOpacity(.5),
                        width: 2.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: devicewidth * .32,
                    child: Row(
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                            height: 20,
                            child: Image.asset("assets/images/verified.png")),
                      ],
                    ),
                  ),
                  Text(
                    'johndoe@gmail.com',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.3),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: devicewidth,
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        ProfileWidget(
                          icon: Icons.person,
                          title: 'My Profile',
                        ),
                        ProfileWidget(
                          icon: Icons.settings,
                          title: 'Settings',
                        ),
                        ProfileWidget(
                          icon: Icons.notifications,
                          title: 'Notifications',
                        ),
                        ProfileWidget(
                          icon: Icons.chat,
                          title: 'FAQs',
                        ),
                        ProfileWidget(
                          icon: Icons.share,
                          title: 'Share',
                        ),
                        ProfileWidget(
                          icon: Icons.logout,
                          title: 'Log Out',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
