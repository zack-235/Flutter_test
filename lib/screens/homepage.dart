import 'package:e_commerce_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1E1F28),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/HomeBanner.png"))),
          height: 536,
          width: 375,
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Fashion\nsale',
                    style: TextStyle(
                      color: Color(0xFFF6F6F6),
                      fontSize: 48,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w900,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 18, left: 10, bottom: 32, right: 205),
                  child: CustomButton(
                    text: 'Check',
                    callback: () {},
                  ))
            ],
          )),
        ));
  }
}
