// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

// import 'package:final_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// import 'RootPage.dart';
import '../ui/screens/login-page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/OnboardingBG.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    // color: Colors.white54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              // child: Padding(
              padding: EdgeInsets.only(top: deviceheight * .1),
              child: SizedBox(
                height: 50,
                child: Text(
                  'KAKU\'S CANTEEN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    //fontWeight: FontWeight.bold,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              // ),
            ),

            SizedBox(
              child: Positioned(
                bottom: deviceheight * .2,
                left: devicewidth * .2,
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      currentIndex = page;
                    });
                  },
                  controller: _pageController,
                  children: [
                    createPage(
                      image: 'assets/images/78267-food-choice.json',
                      //description: 'Check out your options here',
                    ),
                    createPage(
                      image: 'assets/images/24703-food-animation.json',
                      //description:'Waiting at the queue in the mess is frustrating? Not anymore ',
                    ),
                    createPage(
                      image: 'assets/images/75783-prepare-food.json',
                      //description:'Happy Ordering!',
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: deviceheight * .2,
              right: devicewidth * .43,
              child: Row(
                children: _buildIndicator(),
              ),
            ),
            // Padding(padding: Edgensets.symmetric(vertical: 0),
            // )
            // Container(

            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage('assets/images/line vector.png'),),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}

class createPage extends StatelessWidget {
  final String image;
  //final String description;
  const createPage({
    Key? key,
    required this.image,
    //required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    return Container(
      // decoration: BoxDecoration(
      //                     color: AppColors.loginbgColor,
      //                     ),
      padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            // padding: const EdgeInsets.only(top: 0.0),
            child: SizedBox(
              height: deviceheight * .4,
              child: Lottie.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}

//Create the indicator decorations widget
Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    height: 10.0,
    width: isActive ? 20 : 8,
    margin: const EdgeInsets.only(right: 5.0),
    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

// create the indicator list

