import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/frontbg.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}
