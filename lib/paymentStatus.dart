import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: 126,
                        width: 126,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(77, 166, 107, 1)),
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
                                Icons.check,
                                color: Color.fromRGBO(77, 166, 107, 1),
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
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Payment done!",
                        style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1))),
                    const SizedBox(
                      height: 7,
                    ),
                    Text("Bill payment has been done",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(83, 93, 102, 1))),
                    Text("successfully",
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(83, 93, 102, 1))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Payment details",
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(25, 25, 25, 1))),
                    const SizedBox(
                      height: 25,
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
                            Text("Biller",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        120, 131, 141, 1))),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Electricity company inc.",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(83, 93, 102, 1))
                                        ),
                                        
                          ],
                        ),
                      ],
                    )),

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
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Amount",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                        120, 131, 141, 1))),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("\$132.32 ",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(83, 93, 102, 1)))
                          ],
                    
                        ),
                     

                      ],
                    
                    )
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
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Transaction no.",
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
                         const Spacer(),
                      const  Icon(Icons.file_copy_outlined)
                      ],
                    )),

                    const SizedBox(
                      height: 40,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const  Icon(Icons.flag_outlined,color: Color.fromRGBO(184, 50, 50, 1),
                        
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                     Text("Report a problem", style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(184, 50, 50, 1)))
                     
                      ],
                     ),
                     const Spacer(),
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
      ),
    );
  }
}
