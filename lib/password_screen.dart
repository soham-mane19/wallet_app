import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/otp.dart';
import 'package:wallet_app/otpprovider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
    
    FirebaseAuth auth = FirebaseAuth.instance;
bool mobile = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  color: const Color.fromRGBO(247, 244, 255, 1),
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
                                      color:
                                          const Color.fromRGBO(29, 98, 202, 1),
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
                                      color:
                                          const Color.fromRGBO(29, 98, 202, 1),
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
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/createse.png")
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
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your password",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 227, 237, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          hintText: 'Enter your password',
                          hintStyle: GoogleFonts.aBeeZee(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(186, 194, 199, 1)),
                          suffixIcon:
                              const Icon(Icons.visibility_off_outlined)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          bottommodel();
                        },
                        child: Text(
                          "Forgot password?",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(29, 98, 202, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(87, 50, 191, 1)),
                            minimumSize:
                                MaterialStatePropertyAll(Size(328, 45))),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void bottommodel() {
    
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: 320,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Forgot your password?",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Done",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(29, 98, 202, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      mobile ? "Mobile number" : "Email",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    mobile
                        ? IntlPhoneField(
                            controller: phonecontroller,
                            disableLengthCheck: true,
                            decoration: InputDecoration(
                              hintText: '7X-XXXXXXX',
                              hintStyle: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(186, 194, 199, 1)),
                              border: const OutlineInputBorder(),
                            ),
                            initialCountryCode: 'IN',
                          )
                        : SizedBox(
                            height: 45,
                            child: TextFormField(
                              controller: emailcontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(225, 227, 237, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  hintText: 'e.g. email@example.com',
                                  hintStyle: GoogleFonts.aBeeZee(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          186, 194, 199, 1)),
                                  suffixIcon: const Icon(
                                      Icons.visibility_off_outlined)),
                            ),
                          ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(87, 50, 191, 1)),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(328, 45))),
                          onPressed: () {
                            // Provider.of<Otp>(context, listen: false).getinfo(
                            //     emailcontroller.text,
                            //     phonecontroller.text,
                            //     mobile);
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) {
                            //     return const Otp1();
                            //   },
                            // ));
                            verify();
                          },
                          child: Text(
                            "Send reset link",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            mobile = !mobile;
                          });
                        },
                        child: Text(
                          mobile ? "Use email instead" : "Use mobile instead",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(29, 98, 202, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
  void verify(){
       auth.verifyPhoneNumber(
        phoneNumber:  '+91${phonecontroller.text}',
        verificationCompleted:(PhoneAuthCredential credential){

        },
         verificationFailed:  (FirebaseAuthException e) {
           
         },
          codeSent: (String verificationID ,int? resendToken) { 
 Provider.of<Otp>(context, listen: false).getinfo(
                                emailcontroller.text,
                                phonecontroller.text,
                              mobile,
                              verificationID,
                                );
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const Otp1();
                              },
                            ));

          },
           codeAutoRetrievalTimeout: ( String verificationId){

           }
           );

  }
}
