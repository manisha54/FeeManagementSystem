import 'package:flutter/material.dart';

import '../model/student.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  List<String> cities = [
    "Kathmandu",
    "Lalitpur",
    "Bhaktapur",
    "Pokhara",
  ];
  List<Student> lstStudent = [];
  // Controllers for TextFormFields
  final studentIdController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();
 // final addressController = TextEditingController();
  final dueAmountController = TextEditingController();




  String? selectedCity;
  String? gender;


  final key = GlobalKey<FormState>();

//  List<Student> lstStudent = [];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    //  appBar: AppBar(
    //     title: const Text("Register"),
    //   ),
      body: Container(
        height: 1100,
        width: double.infinity,
        color:  const Color(0xFFC0DCF9),
        child: Form(
          key:key,
          child: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.all(40),
              child: Column(
                children:  [
                 RichText(
                  text:  const TextSpan(
                            text: ("Register to "),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,               
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
                      const SizedBox(height: 15),
                       TextFormField(
                        controller: studentIdController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
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
                       style: const TextStyle(fontSize: 19, color: Colors.black),
          
                        
                      ),
                      
          
                      const SizedBox(height: 15),
                       TextField(
                        controller: firstNameController,
                        decoration: const InputDecoration(
                          hintText: "enter student first name",
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
                       style: const TextStyle(fontSize: 19, color: Colors.black),
          
                        
                      ),
          
                      const SizedBox(height: 15),
                       TextField(
                        controller: lastNameController,
                        decoration: const InputDecoration(
                          hintText: "enter student last name",
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
                       style: const TextStyle(fontSize: 19, color: Colors.black),
          
                        
                      ),
          
          
          
                      const SizedBox(height: 15),
                       TextField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Age",
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
                       style: const TextStyle(fontSize: 19, color: Colors.black),
          
                        
                      ),
                      const SizedBox(height: 15),
                      const Align(
                         alignment: Alignment.centerLeft,
                         child: Text('Select gender'),
                      ),
                      // Create radio button for gender
                    RadioListTile(
                      title:  const Text('Male'),
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                     RadioListTile(
                      title:  const Text('Female'),
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                     RadioListTile(
                      title:  const Text('Others'),
                      value: 'Others',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                   DropdownButtonFormField(
                      validator: (value) {
                        if (value == null) {
                          return 'Please select city';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(),
                      ),
                      items: cities
                          .map(
                            (city) => DropdownMenuItem(
                              value: city,
                              child: Text(city),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCity = value;
                        });
                      },
                    ),
        
        
                    const SizedBox(height: 15),
                       TextFormField(
                        controller: dueAmountController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(              
                          hintText: "enter due amount",
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
                       style: const TextStyle(fontSize: 19, color: Colors.black),
          
                        
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
                         Navigator.pushNamed(context,  '/loginview');
                       if (key.currentState!.validate()){
                            Student student =Student(
                              studentId: studentIdController.text.trim(),
                              fname: firstNameController.text.trim(),
                              lname: lastNameController.text.trim(),
                              age: int.parse(ageController.text.trim()),
                              gender: gender,
                          //    address: addressController.text.trim(),
                              city: selectedCity,
                              dueAmount: int.parse(dueAmountController.text.trim())
                            
                            );
                            lstStudent.add(student);
        
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("registered successfully"),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.green,
                                behavior: SnackBarBehavior.floating,
                                ),                           
                            );                                                
                          }
                        },
                        child:  const Text("Register",
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