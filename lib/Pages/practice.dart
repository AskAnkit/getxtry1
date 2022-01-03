import 'package:flutter/material.dart';

class PracticeProvider extends StatelessWidget {
  const PracticeProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
              ),
             const SizedBox(height: 20,),

            const  TextField(

              ),
            const  SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {  },
                  child: const Text('Check'),

                ),
              ),
              const  SizedBox(height: 20,),
              const Text('Enter your age'),
            ],
          ),
        ),
      ),

    );
  }
}
