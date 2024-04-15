import 'package:flutter/material.dart';
import 'package:testproject/screens/dashboard_page.dart';
import 'package:testproject/screens/landing_page.dart';
import 'package:testproject/screens/login_page.dart';
import 'package:testproject/screens/new_account.dart';
import 'package:testproject/screens/forgot_password.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/createAccount': (context) => const CreateNewAccountPage(),
        '/forgotPassword': (context) => const ForgotPasswordPage(),
        '/dashboardPage': (context) => const DashboardPage(),
      },
    ),
  );
}
