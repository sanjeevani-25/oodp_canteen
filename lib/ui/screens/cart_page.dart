// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../screens/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

import '../../models/Food.dart';

class CartPage extends StatefulWidget {
  final List<Food> addedToCartFoods;
  const CartPage({Key? key, required this.addedToCartFoods}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  int totalAmount = 0;
  // getTotalAmount() {
  //   // var count = 0;
  //   for (int i = 0; i < widget.addedToCartFoods.length; i++) {
  //     // int index=widget.addedToCartFoods();
  //     totalAmount+=Food.priceofitem(widget.priceofitem());
  // }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.addedToCartFoods.isEmpty
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
                child: Lottie.asset('assets/images/8325-mercuri-cart.json'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Your Cart is Empty',
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
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: widget.addedToCartFoods.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    totalAmount+=Food.priceofitem(index);
                    return FoodWidget(
                        index: index, foodList: widget.addedToCartFoods);
                  }),
            ),

            Column(
              children: [
                const Divider(thickness: 1.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Totals',style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                    Text('$totalAmount', style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xff6D2113),
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}