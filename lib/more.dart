import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  int index =3;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title: Text("More", style: GoogleFonts.sora(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
      ) ,
       body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading:const  Icon(Icons.lightbulb_outline, color: Colors.purple),
            title: Text('Pay bills',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/payBills');
            },
          ),
          ListTile(
            leading:const  Icon(Icons.sync, color: Colors.blue),
            title: Text('Transfer',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/transfer');
            },
          ),
          ListTile(
            leading:const  Icon(Icons.arrow_upward, color: Colors.green),
            title: Text('Topup',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/topup');
            },
          ),
          ListTile(
            leading:const  Icon(Icons.arrow_downward, color: Colors.red),
            title: Text('Withdraw',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/withdraw');
            },
          ),
          ListTile(
            leading:const  Icon(Icons.analytics, color: Colors.purple),
            title: Text('Analytics',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/analytics');
            },
          ),
        const  Divider(),
          ListTile(
            leading:const  Icon(Icons.help_outline, color: Colors.yellow),
            title: Text('Help',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/help');
            },
          ),
          ListTile(
            leading:const  Icon(Icons.contact_phone, color: Colors.teal),
            title: Text('Contact us',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/contactUs');
            },
          ),
          ListTile(
            leading:const  Icon(Icons.info_outline, color: Colors.blue),
            title: Text('About',style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 25, 25, 1))),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
          index==1?Navigator.of(context).pushNamed('/history'):index==2?Navigator.of(context).pushNamed('/Card'):index==0?Navigator.of(context).pushNamed('/home'):null;
          
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