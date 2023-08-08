import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: transparent,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))]),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 18, left: 14),
          child: Text("My profile",
              style: GoogleFonts.metrophobic(
                  color: white6, fontSize: 34, fontWeight: FontWeight.w700)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 17, top: 24, right: 18, bottom: 28),
              child: CircleAvatar(
                radius: 32,
                child: Image.asset("assets/images/ava.png"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Matilda Brown",
                    style: GoogleFonts.metrophobic(
                        color: white6,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        height: 1.22)),
                Text("matildabrown@mail.com",
                    style: GoogleFonts.metrophobic(
                        color: Color(0xFFABB4BD),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.43))
              ],
            )
          ],
        )
      ]),
    );
  }
}
