import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Otp extends ChangeNotifier{
String? email;
String? number;
bool? mobile ;
String? verificationID;
User? user;
 Otp ({this.email,this.number, this.mobile,this.verificationID,this.user});

void getinfo([String? email,String? number,bool? mobile,String? verificationID]){
this.email  = email;
this.number = number;
this.mobile = mobile;
this.verificationID = verificationID;

ChangeNotifier();


}
void setUser(User user){
   this.user = user;
   ChangeNotifier();
}


}