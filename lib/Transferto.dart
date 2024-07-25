import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/Transferstatus.dart';


class Transferto extends StatelessWidget {
  const Transferto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text("<   Back",
                              style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color.fromRGBO(129, 98, 202, 1))),
                        ),
                      ]),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text("Transfer to",
                                  style: GoogleFonts.sora(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1))),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/name1.png"),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("harry",
                                          style: GoogleFonts.sora(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  25, 25, 25, 1))),
                                      Text("+1-300-555-0161",
                                          style: GoogleFonts.sora(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  120, 131, 141, 1))),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text("Enter Amount",
                                  style: GoogleFonts.sora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          120, 131, 141, 1))),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 197,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.sora(
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(
                                  25,
                                  25,
                                  25,
                                  1,
                                )),
                            cursorHeight: 38,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: '00.00',
                              hintStyle: GoogleFonts.sora(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(186, 194, 199, 1)),
                              border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(87, 50, 191, 1),
                                      width: 2)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(87, 50, 191, 1),
                                      width: 2)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 270,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: const MaterialStatePropertyAll(
                              Color.fromRGBO(253, 194, 40, 1),
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            minimumSize: const MaterialStatePropertyAll(
                                Size(double.infinity, 45))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const Transferstatus();
                            },
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.security,
                              color: Color.fromRGBO(39, 6, 133, 1),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Secure payment",
                              style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(39, 6, 133, 1)),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
