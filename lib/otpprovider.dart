import 'package:flutter/cupertino.dart';

class Otp extends ChangeNotifier{
String? email;
String? number;
bool? mobile ;
String? verificationID;
 Otp ({this.email,this.number, this.mobile,this.verificationID});

void getinfo([String? email,String? number,bool? mobile,String? verificationID]){
this.email  = email;
this.number = number;
this.mobile = mobile;
this.verificationID = verificationID;

ChangeNotifier();


}


}