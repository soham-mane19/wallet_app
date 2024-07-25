import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding:const  EdgeInsets.only(left: 20,right: 20,top: 50,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("<   Back", style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(129, 98, 202, 1))),

          
              
              ),
            ]
          ),
         const SizedBox(
          height: 40,
         ),
         Text("About eWallet", style: GoogleFonts.sora(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 1))),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text("Our app allows you to easily store, manage, and spend your money on the go. With our secure platform, you can make transactions, check your balance, and track your spending all in one place.Whether you're paying bills, shopping online, or sending money to friends and family, our app makes it easy and convenient to do so. Plus, with our various promotions and discounts, you can save even more while using our app.Thank you for choosing us as your preferred e-wallet solution. If you have any questions or feedback, please don't hesitate to contact us. We're always here to help.", style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(83, 93, 102, 1))),


          
              
            
        

        ]
      ),
      )
      );
  }
}