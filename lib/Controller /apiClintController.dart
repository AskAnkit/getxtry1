import 'package:get/get.dart';

class CheckEligibility extends GetxController{

  String selectedMsg = '';
     bool? isSelected ;


   isEligible(double age){
     if(age<18.0) {
       selectedMsg = "You are Not Eligible ";
       isSelected = false;

     }
     else if(age >=18.0){
       selectedMsg ='You are Eligible';
       isSelected = true;

     } else{
       selectedMsg ='Enter Your Age';

     }

     update();


   }
}