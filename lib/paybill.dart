import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/paymentStatus.dart';

class Paybills extends StatelessWidget {
  const Paybills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("<   Back",
                      style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(129, 98, 202, 1))),
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Text("Pay to",
                  style: GoogleFonts.sora(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1))),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(230, 221, 255, 1)),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text("New biller",
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(83, 93, 102, 1))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: const Color.fromRGBO(230, 221, 255, 1),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("or",
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(120, 131, 141, 1))),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 1,
                    width: 150,
                    color: const Color.fromRGBO(230, 221, 255, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 37,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(225, 227, 237, 1), width: 1)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(225, 227, 237, 1), width: 1)),
                    prefixIcon: const Icon(Icons.search_sharp),
                    hintText: 'Search biller',
                    hintStyle: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(186, 194, 199, 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text("Saved billers",
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(83, 93, 102, 1))),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  bottoModelSheet(context);
                },
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(230, 221, 255, 1)),
                      child: const Icon(
                        Icons.lightbulb_outlined,
                        color: Color.fromRGBO(87, 50, 191, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Electricity",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1))),
                        Text("Due: \$132.32",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(120, 131, 141, 1))),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        weight: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: const Color.fromRGBO(237, 239, 246, 1),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(228, 239, 255, 1)),
                    child: const Icon(
                      Icons.water_drop,
                      color: Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Water",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
                      Text("Due: \$32.21",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1))),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      weight: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: const Color.fromRGBO(237, 239, 246, 1),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(230, 246, 236, 1)),
                    child: const Icon(
                      Icons.wifi,
                      color: Color.fromRGBO(40, 155, 79, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
                      Text("All paid",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1))),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      weight: 14,
                    ),
                  ),
                ],
              ),
            ])));
  }

  void bottoModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 20,
              right: 20,
              top: 20),
          child: Container(
            height: 381,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(230, 221, 255, 1),
                      ),
                      child: const Icon(
                        Icons.lightbulb_outlined,
                        color: Color.fromRGBO(87, 50, 191, 1),
                        size: 26,
                        weight: 26,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Electricity\n',
                          style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
                      TextSpan(
                          text: 'Utility',
                          style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1))),
                    ])),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Done",
                          style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(29, 98, 202, 1))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 64,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 246, 246, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("Due: \$132.32",
                      style: GoogleFonts.sora(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(184, 50, 50, 1))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 12,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color.fromRGBO(237, 239, 246, 1),
                            width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Due date",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(120, 131, 141, 1))),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("December 29, 2022 - 12:32 ",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(83, 93, 102, 1)))
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 12,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color.fromRGBO(237, 239, 246, 1),
                            width: 1)),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Registration no.",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        120, 131, 141, 1))),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("23010412432431 ",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(83, 93, 102, 1)))
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(253, 194, 40, 1),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      minimumSize: const MaterialStatePropertyAll(
                          Size(double.infinity, 45))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const PaymentStatus();
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
              ],
            ),
          ),
        );
      },
    );
  }
}
