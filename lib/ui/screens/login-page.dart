// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, depend_on_referenced_packages, import_of_legacy_library_into_null_safe, non_constant_identifier_names, file_names

import 'package:final_app/ui/Rootpage.dart';
import 'package:final_app/palette.dart';
import 'package:final_app/utils/colors.dart';
import 'package:flutter/material.dart';
import '../screens/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    // final devicewidth = MediaQuery.of(context).size.width;

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
                          LoginForm(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Builder LoginForm() {
    return Builder(builder: (context) {
      return Form(
        child: Container(
          child: Column(
            children: [
              EmailInput(
                icon: FontAwesomeIcons.solidEnvelope,
                hint: 'Email',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              PasswordInput(
                icon: FontAwesomeIcons.lock,
                hint: 'Password',
                inputAction: TextInputAction.done,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                // width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.mainColor)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const RootPage()));
                    },
                    child: Text("LOGIN")),
              )
            ],
          ),
        ),
      );
    });
  }
}
