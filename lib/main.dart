import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/Homescreen.dart';
import 'package:wallet_app/Transfer.dart';
import 'package:wallet_app/about.dart';
import 'package:wallet_app/card.dart';
import 'package:wallet_app/check.dart';
import 'package:wallet_app/history.dart';
import 'package:wallet_app/login.dart';
import 'package:wallet_app/more.dart';
import 'package:wallet_app/otpprovider.dart';
import 'package:wallet_app/password_screen.dart';
import 'package:wallet_app/paybill.dart';
import 'package:wallet_app/setting.dart';
import 'package:wallet_app/spalsh_Screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wallet_app/firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
     
    return  ChangeNotifierProvider(
     create: (context) {
       return Otp();
     }, 
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
       routes: {
        '/login': (context) {
          return Login();
        },
        '/password':(context) => const PasswordScreen(),
        '/home':(context) => const HomeScreen(),
        '/history':(context) => const History(),
        '/Card':(context) => const CardScreen(),
        '/More':(context) => const More(),
            '/setting':(context) =>  Setting(),
            '/about':(context) => const About(),
            '/payBills':(context) => const Paybills(),
            '/transfer':(context) => const Transfer(),
             '/check':(context)=> const Check(),
             },
             home: const SpalshScreen(),
      ),
    );
  }
}
