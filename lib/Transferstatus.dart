import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transferstatus extends StatelessWidget {
  const Transferstatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
                       Center(
                         child: Stack(children: [
                          Container(
                            height: 126,
                            width: 126,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(224, 85, 85, 1)),
                          ),
                          Positioned(
                            top: 50,
                            left: 25,
                            child: Container(
                              height: 86,
                              width: 72,
                              padding:const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(255, 255, 255, 1)),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.close,
                                    color: Color.fromRGBO(224, 85, 85, 1),
                                    size: 28,
                                    weight: 28,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 32,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                186, 194, 199, 1),
                                            width: 1)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 38,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                186, 194, 199, 1),
                                            width: 1)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 32,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                186, 194, 199, 1),
                                            width: 1)),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                                               ]),
                       ),
                       const SizedBox(
                        height: 10,
                      ),
                      Text("Transfer Failed :(",
                          style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("Your transfer has been declined ",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(83, 93, 102, 1))),
                      Text("due to a technical issue",
                          style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(83, 93, 102, 1))),
                    const SizedBox(
              height: 320,
             ),
                ElevatedButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor:const MaterialStatePropertyAll( Color.fromRGBO(87, 50, 191, 1),
                ),
               shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
               )),
               minimumSize:const  MaterialStatePropertyAll(Size(double.infinity,45))
                ),
                onPressed: (){
                         Navigator.of(context).pushNamed('/home');
              }, child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 
                    Text("Back to wallet",style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                  ],
                ),
            ),
         ],
                  ),
              
             
            
          
      )     
      
    );
  }
}