import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  final emailCont = TextEditingController();
  final passwordCont = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailCont,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(

                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),

                  ),
                ),
               const SizedBox(height: 30,),
                TextFormField(
                  controller: passwordCont,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),

                  ),
                ),

            const  SizedBox(height: 30,),
                ElevatedButton(
                    onPressed: (){},
                    child: const Text('LogIn') )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
