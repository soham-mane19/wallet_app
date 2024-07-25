import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/otpprovider.dart';

class Otp1 extends StatefulWidget {
  const Otp1({super.key});

  @override
  State<Otp1> createState() => _OtpState();
}

class _OtpState extends State<Otp1> {
  Timer? timer;
  int timersecond = 30;
  bool checkbox = false;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timersecond > 0) {
          timersecond--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          Container(
            height: 100,
            color: const Color.fromRGBO(255, 255, 255, 255),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            Text(
                              "<",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(29, 98, 202, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Back",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(29, 98, 202, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    Text(
                      "Tap’nPay",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: const Color.fromARGB(255, 85, 38, 212),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 225,
            child: Row(
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(253, 194, 40, 1),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(253, 194, 40, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'An SMS sent to your ',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1))),
            TextSpan(
                text: Provider.of<Otp>(context).mobile!
                    ? 'mobile number'
                    : 'Email',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1))),
          ]),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Center(
        child: Text(
            Provider.of<Otp>(context).mobile!
                ? "${Provider.of<Otp>(context).number}"
                : "${Provider.of<Otp>(context).email}",
            style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1))),
      ),
      const SizedBox(
        height: 20,
      ),
      Center(
        child: Text("Enter six-digit code",
            style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(120, 131, 141, 1))),
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 197,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 6) {
                    setState(() {
                      checkbox = true;
                      timersecond = 0;
                    });
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: ' XXXXXX ',
                    suffixIcon: checkbox
                        ? const Icon(
                            Icons.check_circle_outline,
                            color: const Color.fromRGBO(
                              77,
                              166,
                              107,
                              1,
                            ),
                          )
                        : null,
                    hintStyle: GoogleFonts.sora(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(186, 194, 199, 1)),
                    border: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(87, 50, 191, 1)))),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Resend code ',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: timersecond == 0
                        ? const Color.fromRGBO(29, 98, 202, 1)
                        : const Color.fromRGBO(120, 131, 141, 1))),
            TextSpan(
                text: ' 00:${timersecond.toString().padLeft(2, '0')}',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1))),
          ]),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Center(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromRGBO(87, 50, 191, 1),
                ),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                minimumSize: const MaterialStatePropertyAll(Size(250, 45))),
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Text(
              "Done",
              style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            )),
      ),
    ])));
  }
}
