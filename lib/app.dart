import 'package:fee_management/view/dashboard.dart';
import 'package:fee_management/view/login.dart';
import 'package:fee_management/view/output.dart';
import 'package:fee_management/view/register.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const DashboardView(),
        '/loginview':(context) => const LoginView(),
        '/registerview':(context) => const RegisterView(),
        '/outputview':(context) => const OutputView()

      },
      

    );
  }
}