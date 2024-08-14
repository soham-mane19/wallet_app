import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import 'package:wallet_app/Homescreen.dart';
import 'package:wallet_app/login.dart';
import 'package:wallet_app/otpprovider.dart';





class Check extends StatelessWidget {

 const  Check({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            final user  = snapshot.data!;
  Provider.of<Otp>(context).setUser(user);
            return  const  HomeScreen(); 
          } else {
            return Login(); 
          }
        }
        return   const CircularProgressIndicator(); 
      },
    );
  }
}
