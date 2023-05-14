import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("login"),

      ),

      body: Container(
        height: 1100,
        width: double.infinity,
        color:  const Color(0xFFC0DCF9),
        child: Form(
          key:key,
          child: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.all(60),
              child: Column(
                children:  [
                 RichText(
                  text:  const TextSpan(
                            text: ("Login to "),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 43,               
                              ),
                              children: [
                                TextSpan(
                                  text: "Fee",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:  Color(0xFF0E0EC4),
                                  ),
                                ),
                                 TextSpan(
                                  text: "Management",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  ),
                                ),
                              ],
                          ),
                  ),
                  Column(
                    children:   [
                      const SizedBox(height: 50),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "enter student ID",
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: 
                          EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                            ),
                          ),
          
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                  color: Colors.white,
                            ),
                                  borderRadius: BorderRadius.all(
                                            Radius.circular(25),
                            ),
                          ),                     
                        ),
                       style: TextStyle(fontSize: 19, color: Colors.black),
          
                        
                      ),
        
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const SizedBox(height: 4),
                      ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(width:200, height:50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape:   RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          )
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context,  '/outputview');
                         if (key.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("login successfully"),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.green,
                                behavior: SnackBarBehavior.floating,
                                ),                           
                            );
                         }
                         
                        },
                        child:  const Text("Login",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.w500)),
                        ),
                      ) ,
                    ],
                  ),
        
        
                    
                
          
                    ],
                  )
          
          
                  
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}