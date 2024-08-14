import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/otpprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseAuth auth = FirebaseAuth.instance;
  int index = 0;

  List<Map<String, String>> nameList = [
    {
      'name': 'add',
    },
    {
      'name': 'harry',
      'image': 'assets/name1.png',
    },
    {
      'name': 'carry',
      'image': 'assets/name2.png',
    },
    {
      'name': 'anant',
      'image': 'assets/name3.png',
    },
    {
      'name': 'radhika',
      'image': 'assets/name41.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<Otp>(context).user!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: const Color.fromRGBO(39, 6, 133, 1),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          minRadius: 20,
                          backgroundImage: NetworkImage(user.photoURL!),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Hello\n',
                              style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1))),
                          TextSpan(
                              text: '${user.displayName}',
                              style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1))),
                        ])),
                        const Spacer(),
                        IconButton(
                            onPressed: (() {
                              Navigator.of(context).pushNamed('/setting');
                            }),
                            icon: const Icon(
                              Icons.settings,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 178,
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 50, bottom: 20, right: 32, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(80, 51, 164, 1),
                            Color.fromRGBO(51, 16, 152, 0.65),
                          ])),
                      child: Column(
                        children: [
                          Center(
                              child: Text("Main balance",
                                  style: GoogleFonts.sora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          178, 161, 228, 1)))),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '\$14,235',
                                style: GoogleFonts.sora(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 1))),
                            TextSpan(
                                text: '.34',
                                style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 1))),
                          ])),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Icon(
                                    Icons.arrow_upward,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    size: 20,
                                    weight: 20,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("Top up",
                                      style: GoogleFonts.sora(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)))
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 24,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            111, 69, 233, 1),
                                        width: 1)),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.download,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    size: 20,
                                    weight: 20,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("Withdraw",
                                      style: GoogleFonts.sora(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)))
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 24,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            111, 69, 233, 1),
                                        width: 1)),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.autorenew,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    size: 20,
                                    weight: 20,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("Transfer",
                                      style: GoogleFonts.sora(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)))
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recent Transfers",
                      style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(25, 25, 25, 1))),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: nameList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              Container(
                                height: index == 0 ? 64 : null,
                                width: index == 0 ? 64 : null,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == 0
                                      ? const Color.fromRGBO(230, 221, 255, 1)
                                      : null,
                                ),
                                child: index == 0
                                    ? const Icon(Icons.add)
                                    : Image.asset(
                                        nameList[index]['image']!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(nameList[index]['name']!)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Latest Transactions",
                          style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
                      const Spacer(),
                      Text("View all",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(107, 107, 107, 1))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Wallmart.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Walmart',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 25, 25, 1))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('Today  12:32',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(120, 131, 141, 1))),
                        ],
                      ),
                      const Spacer(),
                      Text('-\$35.23',
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(184, 50, 50, 1))),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        weight: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(237, 239, 246, 1),
                            width: 1)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Topup.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Top up',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 25, 25, 1))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('Yesterday  2:12',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(120, 131, 141, 1))),
                        ],
                      ),
                      const Spacer(),
                      Text('+\$435.23',
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(40, 155, 79, 1))),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        weight: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(237, 239, 246, 1),
                            width: 1)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Netflix.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Netflix',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 25, 25, 1))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('Dec 24  13:53',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(120, 131, 141, 1))),
                        ],
                      ),
                      const Spacer(),
                      Text('-\$13.23',
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(184, 50, 50, 1))),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        weight: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(237, 239, 246, 1),
                            width: 1)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
          index == 1
              ? Navigator.of(context).pushNamed('/history')
              : index == 2
                  ? Navigator.of(context).pushNamed('/Card')
                  : Navigator.of(context).pushNamed('/More');
        },
        currentIndex: index,
        selectedItemColor: const Color.fromRGBO(11, 69, 233, 1),
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
      padding: const EdgeInsets.only(top: 8),
      decoration: itemIndex == index
          ? const BoxDecoration(
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
