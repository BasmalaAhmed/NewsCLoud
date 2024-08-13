import 'package:flutter/material.dart';
import 'package:news_app/screens/home.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Images/download.jpg"),
                fit: BoxFit.cover,
              ),
            ),),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Padding(
                   padding: EdgeInsets.only(top: 470),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "News",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontFamily: "Lalezar"
                        ),
                        ),
                        Text(
                        "Cloud",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: "Lalezar"
                        ),
                        ),
                    ],
                                 ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 100),
                   child: Container(
                   height: 50.0,
                   width: 200,
                   decoration: BoxDecoration(
                    color: const Color(0xffFEEADD),
                    borderRadius: BorderRadius.circular(90)
                    ),
                   child: ElevatedButton(
                     onPressed: () {
                      Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
                     },
                     style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                     child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontFamily: "Lalezar",
                        fontSize: 25,
                        color: Colors.black
                      ),),
                   ),
                 ),
                 )
              ],
            ),
      
          ],
        ),
        );
  }
}
