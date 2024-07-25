import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardpayment extends StatelessWidget {
  const Cardpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(padding:const  EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 30),
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
            height: 30,
          ),
           Stack(
            children: [
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
                              ]),
    const SizedBox(
      height: 150,
    ),
    Center(
      child: Column(
       
        children: [
          
               const Icon(Icons.rss_feed,color: Color.fromRGBO(120, 131, 141, 1),size: 35,weight: 35,),
              const SizedBox(
                height: 10,
               ),
                Text('Move near a device to pay',style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1)))
        ]
          ),
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
                       Navigator.of(context).pushNamed('/password');
            }, child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const   Icon(Icons.qr_code,color: Color.fromRGBO(255, 255, 255, 1),),
                const SizedBox(
                  width: 10,
                ),
                  Text("QR Pay",style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                ],
              ),
          ),
      ],
    )
          
        
      ),
      
    );
  }
}