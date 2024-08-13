import 'package:flutter/material.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffFEEADD), Color(0xffECD7C9),Color(0xffFFFFFF)],
        ),
      ),
    );
  }
}