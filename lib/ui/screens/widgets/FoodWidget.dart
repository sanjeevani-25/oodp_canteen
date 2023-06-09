// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../../../models/Food.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    Key? key,
    required this.index,
    required this.foodList,
  }) : super(key: key);

  final int index;
  final List<Food> foodList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     PageTransition(
        //         child: DetailPage(
        //           plantId: plantList[index].plantId,
        //         ),
        //         type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff6D2113).withOpacity(.3),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 70.0,
        padding:
            const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xff6D2113).withOpacity(.9),
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  top: 5,
                  left: 2,
                  right: 2,
                  child: SizedBox(
                    height: deviceheight * .07,
                    child: Image.asset(foodList[index].imageURL),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(foodList[index].category),
                      Text(
                        foodList[index].foodItem,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff6D2113),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                r'$' + foodList[index].price.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color(0xff6D2113),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
