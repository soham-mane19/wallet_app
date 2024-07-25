import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
 @override
 void initState(){
  super.initState();

  Timer( const Duration(seconds: 3), () {
  Navigator.of(context).pushNamed('/login');
  }
   );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const  Color.fromRGBO(87, 50, 191, 1),
        body: Stack(children: [
          Center(
              child: Text(
            "Tap’nPay",
            style: GoogleFonts.sora(
                fontSize: 33,
                fontWeight: FontWeight.w200,
                color: const Color.fromRGBO(255, 255, 255, 1)),
          )),
          Positioned(
            top: 395,
            right: 120,
              child: Row(children: [
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(253, 194, 40, 1)),
            ),
            const SizedBox(
              width: 5,
            ),
             Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(253, 194, 40, 1)),
            ),

          ]))
        ]));
  }
}
