// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../screens/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

import '../../models/Food.dart';


class FavoritePage extends StatefulWidget {
  final List<Food> favoritedFood;
  const FavoritePage({Key? key, required this.favoritedFood})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: widget.favoritedFood.isEmpty
          ? Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff6D2113).withOpacity(0.1),
            image: DecorationImage(
              image: AssetImage("assets/images/Group.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: size.width,
                child: Lottie.asset('assets/images/7417-favourite-material-design.json'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Your favorited Food Items',
                style: TextStyle(
                  color: Color(0xff6D2113),
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      )
          : Container(
        decoration: BoxDecoration(
          color: Color(0xff6D2113).withOpacity(0.1),
          image: DecorationImage(
            image: AssetImage("assets/images/Group.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        height: size.height ,
        child: ListView.builder(
            itemCount: widget.favoritedFood.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return FoodWidget(
                  index: index, foodList: widget.favoritedFood);
            }),
      ),
    );
  }
}