// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, depend_on_referenced_packages, import_of_legacy_library_into_null_safe

// import 'dart:ui';

import 'package:canteen/palette.dart';
import 'package:canteen/utils/colors.dart';
import 'package:canteen/ui/screens/widgets/email-input.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: deviceheight * 0.3,
                    child: Center(
                      child: Text('KAKUS CANTEEN', style: kheading),
                    ),
                  ),
                  SizedBox(
                    height: deviceheight * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: AppColors.loginbgColor.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text('Login',
                                textAlign: TextAlign.center, style: ktext),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                            child: Container(
                              
                                child: Column(
                                  children: [
                                    EmailInput(
                                      icon:Icons.email,
                                      // icon: FontAwesomeIcons.solidEnvelope,
                                      hint: 'Email',
                                      inputType: TextInputType.emailAddress,
                                      inputAction: TextInputAction.next,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    PasswordInput(
                                      icon: Icons.lock,
                                      // icon: FontAwesomeIcons.lock,
                                      hint: 'Password',
                                      inputAction: TextInputAction.done,
                                    ),
                                  ],
                                ),
                           
                            ),
                          ),

                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ),

                               SizedBox(width: 50),
                               Text(
                                "Remember Me"
                                ,
                                style: TextStyle(
                                    color: AppColors.textColor,
                                  fontSize: 12,
                                ),
                               ),
                            ],


                           
                          ),
                          SizedBox(
                            height: 30,
                          ),


                         Container(
                  child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.textColor,
                      minimumSize: const Size.fromHeight(40),
                     ),
                      onPressed: () async {
                        // User? user= await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                        // print(user);
                        // if(user !=null)
                        // {
                          // Navigator.of(context).pushReplacement(MaterialPageRoute(builder : (context)=> const ProfileScreen()));
                        // }
                      },



                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )),
                ),


                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
