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
          colors: [
            Color.fromARGB(255, 100, 98, 95),
            Color.fromARGB(255, 146, 143, 139),
            Color.fromARGB(255, 207, 203, 198)
          ],
        ),
      ),
    );
  }
}
