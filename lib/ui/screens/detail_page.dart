// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../models/Food.dart';

class DetailPage extends StatefulWidget {
  final int foodId;
  const DetailPage({Key? key, required this.foodId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //Toggle Favorite button
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  //Toggle add remove from cart
  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    List<Food> _foodList = Food.foodList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff6D2113).withOpacity(.15),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Color(0xff6D2113),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('favorite');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff6D2113).withOpacity(.15),
                    ),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            bool isFavorited = toggleIsFavorated(
                                _foodList[widget.foodId].isFavorated);
                            _foodList[widget.foodId].isFavorated =
                                isFavorited;
                          });
                        },
                        icon: Icon(
                          _foodList[widget.foodId].isFavorated == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: const Color(0xff6D2113),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            // right: 0,
            child: Container(
              width: devicewidth ,
              height: deviceheight,
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    // right:10,
                    child: SizedBox(
                      height: deviceheight*.35,
                      width: devicewidth,
                      child: Image.asset(_foodList[widget.foodId].imageURL, fit: BoxFit.cover,),
                      
                    ),
                  ),
                  // Positioned(
                  //   top: 10,
                  //   right: 0,
                  //   child: SizedBox(
                  //     height: 200,
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                          
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: const Color(0xff6D2113).withOpacity(.4),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _foodList[widget.foodId].foodItem,
                            style: const TextStyle(
                              color: Color(0xff6D2113),
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            r'$' + _foodList[widget.foodId].price.toString(),
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                          
                      //   ],
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  // Expanded(
                  //   child: 
                  //   Text(
                  //     _foodList[widget.foodId].decription,
                  //     textAlign: TextAlign.justify,
                  //     style: TextStyle(
                  //       height: 1.5,
                  //       fontSize: 18,
                  //       color: Colors.black54.withOpacity(.7),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: IconButton(onPressed: (){
                setState(() {
                  bool isSelected = toggleIsSelected(_foodList[widget.foodId].isSelected);

                  _foodList[widget.foodId].isSelected = isSelected;
                });
              }, icon: Icon(
                Icons.shopping_cart,
                color: _foodList[widget.foodId].isSelected == true ? Colors.white : const Color(0xff6D2113),
              )),
              decoration: BoxDecoration(
                  color: _foodList[widget.foodId].isSelected == true ? const Color(0xff6D2113).withOpacity(.5) : Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: const Color(0xff6D2113),
                    ),
                  ]),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff6D2113),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: const Color(0xff6D2113).withOpacity(.3),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;
  const PlantFeature({
    Key? key,
    required this.plantFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
          ),
        ),
        Text(
          plantFeature,
          style: const TextStyle(
            color: Color(0xff6D2113),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}