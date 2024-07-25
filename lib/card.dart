import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/cardpayment.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int index =2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('My Cards',
                        style: GoogleFonts.sora(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1))),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Add card',
                        style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(29, 98, 202, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.add,
                      color: Color.fromRGBO(29, 98, 202, 1),
                      size: 20,
                      weight: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 284,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(230, 221, 255, 1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 16, right: 16, bottom: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dolly ChaiWala',
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(25, 25, 25, 1))),
                            const Spacer(),
                            Text('**** 2312',
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(25, 25, 25, 1))),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 242,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(111, 69, 233, 1),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 16, right: 16, bottom: 12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dolly ChaiWala',
                                        style: GoogleFonts.sora(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1))),
                                    const Spacer(),
                                    Text('**** 2312',
                                        style: GoogleFonts.sora(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1))),
                                  ],
                                ),
                              ),
                              Positioned(
                                  child: Stack(children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return const Cardpayment();
                                      },
                                    ));
                                  },
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color:
                                          const Color.fromRGBO(39, 6, 133, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12,
                                          left: 16,
                                          right: 16,
                                          bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Dolly ChaiWala',
                                                  style: GoogleFonts.sora(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          const Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              1))),
                                              const Spacer(),
                                              Text('**** 2312',
                                                  style: GoogleFonts.sora(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          const Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              1))),
                                            ],
                                          ),
                                          const Spacer(),
                                          Text('Balance',
                                              style: GoogleFonts.sora(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      230, 221, 255, 1))),
                                          Text('\$2,354',
                                              style: GoogleFonts.sora(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1)))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 160,
                                  top: 110,
                                  child: Container(
                                    width: 192,
                                    height: 192,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(111, 69, 233, 1),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 70,
                                    left: 240,
                                    child: Container(
                                      height: 162,
                                      width: 162,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  253, 194, 40, 1),
                                              width: 1)),
                                    )),
                                Positioned(
                                    top: -60,
                                    left: -60,
                                    child: Container(
                                      height: 192,
                                      width: 192,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  111, 69, 233, 1),
                                              width: 1)),
                                    ))
                              ]))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
          index==1?Navigator.of(context).pushNamed('/history'):index==0?Navigator.of(context).pushNamed('/home'):Navigator.of(context).pushNamed('/More');
          
        },
        currentIndex: index,
        selectedItemColor:const  Color.fromRGBO(11, 69, 233, 1),
       
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: buildNavItem(Icons.home_outlined, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: buildNavItem(Icons.folder, 1),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: buildNavItem(Icons.view_comfortable_outlined, 2),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: buildNavItem(Icons.folder_open, 3),
            label: 'More',
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(IconData icon, int itemIndex) {
    return Container(
      padding:const  EdgeInsets.only(top: 8),
      decoration: itemIndex == index
          ?const  BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(11, 69, 233, 1),
                  width: 4,
                ),
              ),
            )
          : null,
      child: Icon(icon),
    );
  }
}

