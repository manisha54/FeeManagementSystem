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
          var fname = lstStudents![index].fname;
          var lname = lstStudents![index].lname;
          return  ListTile(
         leading: const CircleAvatar(
          
          
          
         ),
          title: Text(fname!),
          subtitle: Text(lname!),
          trailing: Wrap(
            children:  [
              IconButton(
                onPressed: () {
                setState(() {
                    lstStudents!.removeAt(index);
                });
                },
                icon: const Icon(Icons.delete),

              ),
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.edit),

              ),
              
            ]),

          );
        },
      ),

    );
  }
}