import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/Transferto.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
                Text("Transfer to",
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
                    Text("New contact",
                          style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(83, 93, 102, 1))
                   ),
                   
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
                      hintText: 'Search contact',
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
                Text("Frequent contacts",
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(83, 93, 102, 1))),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                     return  const Transferto();
                  },));
                  },
                  child: Row(
                    children: [
                     Image.asset("assets/transfer1.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("harry",
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 25, 25, 1))),
                          Text("+1-300-555-0161",
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
                   Image.asset("assets/transfer2.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Carry",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1))),
                        Text("+1-300-555-0119",
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
                   Image.asset("assets/transfer3.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Anant",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1))),
                        Text("+1-202-555-0171",
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
                  height: 30,
                ),
                Text("All contacts" ,style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(83, 93, 102, 1)),),
                        const SizedBox(
                          height: 20,
                        ),
                 Row(
                    children: [
                     Image.asset("assets/transfer1.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("harry",
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 25, 25, 1))),
                          Text("+1-300-555-0161",
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
                   Image.asset("assets/transfer2.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Carry",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1))),
                        Text("+1-300-555-0119",
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
                   Image.asset("assets/transfer3.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Anant",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1))),
                        Text("+1-202-555-0171",
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
          
                  ]
                ),
                
          
              ),
        )
            );
  }
}