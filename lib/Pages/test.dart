import 'package:apitry/Controller%20/apiClintController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PracticePage extends StatelessWidget {
  PracticePage({Key? key}) : super(key: key);
final ageController = TextEditingController();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: GetBuilder<CheckEligibility>(
            init: CheckEligibility(),
            builder: (value) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                        width: 40,
                        height: 40,
                        decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: (value.isSelected== true)?
                       Colors.green: Colors.red
                      ),
                  ),


                  const SizedBox(height: 40,),
               TextField(
                 controller: ageController,
                 decoration: InputDecoration(
                 hintText: "Enter Your Age",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
               ),),

               const SizedBox(height: 40,),

                  SizedBox( height: 30,width: double.infinity,
                      child: ElevatedButton(onPressed: () {

                       var myAge =ageController.text.trim();
                       var age = double.parse(myAge);
                        value.isEligible(age);

                        }, child:const Text("Get Response"),)),


               const Text("Check you are eligible for Driving Licence or Not"),
                  const SizedBox(height: 40,),

                  Text(value.selectedMsg),

                ],
              );
            }
          ),
        ),),
    );
  }
}
