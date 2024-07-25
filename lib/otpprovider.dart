import 'package:flutter/cupertino.dart';

class Otp extends ChangeNotifier{
String? email;
String? number;
bool? mobile ;
 Otp ({this.email,this.number, this.mobile});

void getinfo([String? email,String? number,bool? mobile]){
this.email  = email;
this.number = number;
this.mobile = mobile;

ChangeNotifier();


}


}