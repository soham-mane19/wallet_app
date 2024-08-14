import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatefulWidget {
 
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

@override
  void initState(){
   super.initState();
  
  }
  final FirebaseAuth auth = FirebaseAuth.instance;

final   GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
        centerTitle: true,
       
        automaticallyImplyLeading: false,
        title: Container(

          child: Column(
            children: [
              Row(
                
                children: [
                  const SizedBox(
                    width: 220,
                  ),
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
            
                ],
              ),
              Text("Tap’nPay",style: GoogleFonts.aBeeZee(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                color: const Color.fromARGB(255, 85, 38, 212),
                
                ),
          )
            ],
          ),
        ),
        
         ),
         body: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                    color: const Color.fromRGBO(247, 244, 255, 1),
                  child: Center(
                    child: Image.asset("assets/login.png"),
                  ),
                ),
               const  SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Enter your\n',
                        style: GoogleFonts.sora( fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(25, 25, 25, 1),)
                      ),
                       TextSpan(
                        text: 'mobile number\n',
                        style: GoogleFonts.sora( fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(25, 25, 25, 1),)
                      )
                    ]
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Mobile number",style: GoogleFonts.sora(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(25, 25, 25, 1)),
            ),
            const SizedBox(
              height: 5,
            ),
                   
            IntlPhoneField(
           disableLengthCheck: true,
              decoration: InputDecoration(
                hintText: '7X-XXXXXXX',
                hintStyle:  GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(186, 194, 199, 1)),
                border:const  OutlineInputBorder(),
           
              ),
              initialCountryCode: 'IN',
              
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:const MaterialStatePropertyAll( Color.fromRGBO(87, 50, 191, 1),
              ),
             shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
             )),
             minimumSize:const  MaterialStatePropertyAll(Size(double.infinity,45))
              ),
              onPressed: (){
                       Navigator.of(context).pushNamed('/password');
            }, child: Text("Continue",style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(255, 255, 255, 1)),
          )),
          const SizedBox(
            height: 10,
          ),
          Center(child: Text("or continue using",style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(120, 131, 141, 1)))
                ),
              const    SizedBox(
                  height: 20,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                         signin(context);
                      },
                      child: Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:const  Color.fromRGBO(237, 239, 246, 1),
                        ),
                        child: Image.asset("assets/Google.png"),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const  Color.fromRGBO(237, 239, 246, 1),
                      ),
                      child: Image.asset("assets/Facebook.png"),
                    ),
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const  Color.fromRGBO(237, 239, 246, 1),
                      ),
                      child: Image.asset("assets/apple.png"),
                    )
                  ],
                 )
              ],
             ),
           ),
         ),
        
         );
  }

  void signin(BuildContext context)async{
    
      try {
      final GoogleSignInAccount? userCredential = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await userCredential?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await auth.signInWithCredential(credential).then((value) {
        Navigator.of(context).pushReplacementNamed('/home');   
        },);
          
     
    
    } catch (e) {
      print('Sign-in failed: $e');
    }


  }
 
}