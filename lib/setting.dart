import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Setting extends StatelessWidget {
  Setting({super.key});
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
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
                const SizedBox(
                  width: 70,
                ),
                Text("Profile Settings",
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(25, 25, 25, 1)))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset("assets/Verifiedphoto.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Dolly Chaiwala",
                        style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1))),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Joined 2 years ago",
                        style: GoogleFonts.sora(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(120, 131, 141, 1))),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(230, 221, 255, 1)),
                  child: const Icon(
                    Icons.person_2_outlined,
                    color: Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full name",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(120, 131, 141, 1))),
                    Text("Dolly Chaiwala",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1)))
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  child: Text("Edit",
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(29, 98, 202, 1))),
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
                      color: const Color.fromRGBO(201, 235, 229, 1)),
                  child: const Icon(
                    Icons.phone_android,
                    color: Color.fromRGBO(42, 144, 126, 1),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(120, 131, 141, 1))),
                    Text("4596878755",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1)))
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  child: Text("Edit",
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(29, 98, 202, 1))),
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
                    Icons.email_outlined,
                    color: Color.fromRGBO(40, 155, 79, 1),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(120, 131, 141, 1))),
                    Text("dolly@gmail.com",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1)))
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  child: Text("Edit",
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(29, 98, 202, 1))),
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
                      color: const Color.fromRGBO(255, 214, 214, 1)),
                  child: const Icon(
                    Icons.person_2_outlined,
                    color: Color.fromRGBO(184, 50, 50, 1),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Change password",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1)))
                  ],
                ),
                const Spacer(),
                GestureDetector(
                    child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  weight: 14,
                )),
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
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    signout(context);
                  },
                  child: const Text("log out",style: TextStyle(color: Colors.black),)),
            )
          ],
        ),
      ),
    );
  }

  void signout(BuildContext context) async {
    await auth.signOut();
    await googleSignIn.signOut();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
