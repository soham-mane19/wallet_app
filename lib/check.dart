import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:wallet_app/Homescreen.dart';
import 'package:wallet_app/login.dart';





class Check extends StatelessWidget {

 const  Check({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return const  HomeScreen(); 
          } else {
            return Login(); 
          }
        }
        return   const CircularProgressIndicator(); 
      },
    );
  }
}
