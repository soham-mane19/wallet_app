
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History ({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding:const  EdgeInsets.only(top: 40,left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("History", 
                          style: GoogleFonts.sora(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1)),)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                     
                      height: 37,
                      width: 233,
                      
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border:const  OutlineInputBorder(
                            borderSide: BorderSide(color:  Color.fromRGBO(225, 227, 237, 1),width: 1)
                          ),
                          enabledBorder:const  OutlineInputBorder(
                              borderSide: BorderSide(color:  Color.fromRGBO(225, 227, 237, 1),width: 1)
                          ),
                          prefixIcon:const  Icon(Icons.search_sharp),
                          hintText: 'Value goes here',
                          hintStyle:   GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(186, 194, 199, 1)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 37,
                      width: 93,
                      padding:const  EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color:const  Color.fromRGBO(225, 227, 237, 1),width: 1)
                      ),
                      child:  Row(
                        children: [
                         const   Icon(Icons.tune),
                           const SizedBox(
                             width: 5,
                           ),
                          Text('Filter',
                          style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
                        ],
                      ),
                    )
                  ],
                  
                ),
                const SizedBox(
                 height: 20,
                ),
                 Text('Today',
                          style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(83, 93, 102, 1))),
                               const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      return bottomSheet();
                    },
                    child: Row(
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
                                    color: const Color.fromRGBO(120, 131, 141, 1))),
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
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
                 
              ],
            ),
            ),
             Container(
                    width: double.infinity,
                    height: 6,
                   color:const  Color.fromRGBO(237, 239, 246, 1),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text('Yesterday',
                          style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(83, 93, 102, 1))
                              ),
                               const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Amazon.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amazon',
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
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
                      Image.asset("assets/nike.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nike',
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
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
                      Image.asset("assets/homedepot.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('The Home Depot',
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
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
                 
                    ],
                  ),
                  ),
                   Container(
                    width: double.infinity,
                    height: 6,
                   color:const  Color.fromRGBO(237, 239, 246, 1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(padding:const  EdgeInsets.only(left: 20,right: 20),
                  
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
 RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Thursday\n',
                        style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1))
                      ),
                      TextSpan(
                        text: 'December 29, 2022 ',
                        style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(83, 93, 102, 1))
                      ),
                      
                    ]
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Amazon.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amazon',
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
                        ],
                      ),
                      const Spacer(),
                      Text('-\$45.23',
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
                      Image.asset("assets/nike.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nike',
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
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
                        ],
                      ),
                      const Spacer(),
                      Text('+\$450.23',
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
        

                    ],
                  ) 
                  ),
                 

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
          index==0?Navigator.of(context).pushNamed('/home'):index==2?Navigator.of(context).pushNamed('/Card'):Navigator.of(context).pushNamed('/More');
          
        },
        
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
  void bottomSheet(){
    
    showModalBottomSheet(
      context: context,
     builder: (context) {
          return Padding(padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,left: 20,right: 20,top:20),
                child: Container(
                  height: 381,
                  width: double.infinity,
                  decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)
                    ),

                  ),
                  child: Column(
                    children: [
                      Row(
                       
                        children: [
                        Image.asset("assets/wallmart(a).png"),
                        const SizedBox(
                          width: 10,

                        ),
                        RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Walmart\n',
                        style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))
                      ),
                      TextSpan(
                        text: 'Retailer corporation',
                        style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1))
                      ),
                      
                    ]
                  )),
                  const Spacer(),
                  Text("Done", style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(29, 98, 202, 1)))
                        ],
                      ),
                   const SizedBox(
                    height: 20,
                   ),
                   Container(
                    height: 64,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:const  Color.fromRGBO(255, 246, 246, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("-\$35.23", style: GoogleFonts.sora(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(184, 50, 50, 1))),
                   ),
                   const SizedBox(
                    height: 15,
                   ),
                    Container(
                    height: 60,
                    width: double.infinity,
                    padding: const  EdgeInsets.only(top: 12,right: 16,left: 16,),
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all( color:const  Color.fromRGBO(237, 239, 246, 1),width: 1)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today", style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(120, 131, 141, 1))),
                             const  SizedBox(
                                height: 5,
                              ),
                               Text("December 29, 2022 - 12:32 ", style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(83, 93, 102, 1)))
                      ],
                    )
                   ),
                   const SizedBox(
                    height: 10,
                   ),
                    Container(
                    height: 60,
                    width: double.infinity,
                    padding: const  EdgeInsets.only(top: 12,right: 16,left: 16,),
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all( color:const  Color.fromRGBO(237, 239, 246, 1),width: 1)
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Today", style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(120, 131, 141, 1))),
                                 const  SizedBox(
                                    height: 5,
                                  ),
                                   Text("December 29, 2022 - 12:32 ", style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(83, 93, 102, 1)))
                          ],
                        ),
                        const Spacer(),
                       const  Icon(Icons.file_copy_outlined)
                      ],
                    )
                   ),
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
                   
                    ],
                   
                  ),
                ),
                );
     },);


  }
}