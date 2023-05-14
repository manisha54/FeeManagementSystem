import 'package:flutter/material.dart';

import '../model/student.dart';


class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
   List<Student>? lstStudents;
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Text("Home"),
      ),

      body:  ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: lstStudents!.length,
        itemBuilder: (context, index){
          var studentId = studentId![index].studentId;
          var dueAmount = dueAmount![index].lname;
          return  ListTile(
        
          title: Text(studentId!),
          subtitle: Text(dueAmount!),
          );
        },
      ),
    );
  }
}