import 'package:flutter/material.dart';
import 'package:testproject/widgets/button.dart';
import 'package:testproject/widgets/text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 193, 227, 174),
                Color.fromARGB(255, 88, 163, 67),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 200,
              ),
              const CustomText(
                text: '~~Flutter UI~~',
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 80,
              ),
              const CustomText(
                text: 'Welcome Back',
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomActionButton(
                text: 'SIGN IN',
                buttonColor: Colors.transparent,
                textColor: Colors.white,
                borderColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomActionButton(
                text: 'SIGN UP',
                buttonColor: Colors.white,
                textColor: Colors.black,
                borderColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '/createAccount');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
