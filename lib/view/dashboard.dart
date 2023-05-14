import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
           color:  const Color(0xFFC0DCF9),

          child: Padding(
            padding: const EdgeInsets.all(70),
            child: Column(
              children:    [
                Center(
                   child: RichText(
                    text: const TextSpan(
                      text: "Welcome to ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 47,
                        fontWeight: FontWeight.bold
                      ),
                      children: [
                        TextSpan(
                          text: "Fee Management ",
                          style: TextStyle(
                            color:  Color(0xFF0E0EC4),
                             fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),          
                        ),   
                        TextSpan(
                          text: " System",
                          style: TextStyle(
                            color:  Colors.red,
                             fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                  
                        ),     
                      ]
                    ),                  
                    ),                 
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    const SizedBox(height: 100),
                    ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width:330, height:81),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape:   RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        )
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context,  '/registerview');
                      },
                      child:  const Text("Register",
                      style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.w500)),
                      ),
                    ) ,
                  ],
                ),

                const SizedBox(height: 20),
                Column(
                  children:  [
                    Center(
                      child: RichText(
                        text : const TextSpan(
                        text:  'Already have an account ?',
                        style: TextStyle(
                         color:  Color(0xFF0E0EC4),
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                        ),                   
                        ),
                      ),                   
                    ),
                    


                  const SizedBox(height: 10),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color(0xFFC0DCF9),             
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,  '/loginview');

                    },
                    child: const Text("Sign in", style: TextStyle(
                    fontSize: 37,
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500)),                    
                   ),
                   
                    
                  ],              
                ) ,
              ],
              
            ),
          ),
        ),
      ),

    );
  }
}