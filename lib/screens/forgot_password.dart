import 'package:flutter/material.dart';
import 'package:testproject/screens/login_page.dart';
import 'package:testproject/widgets/button.dart';
import 'package:testproject/widgets/text.dart';
import '../utils/form_validation.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomText(
                      text: 'Enter email associated to your account: ',
                      fontSize: 30,
                    )
                    /*Text(
                      "Enter email associated to your account:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),*/
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 88, 163, 67),
                                blurRadius: 10.0,
                                offset: Offset(5.0, 5.0),
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    hintText: "Your Email :",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: "your email address",
                                    prefixIcon: Icon(
                                      Icons.email,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        CustomActionButton(
                          text: 'RESET',
                          buttonColor: Colors.green,
                          textColor: Colors.white,
                          borderColor: Colors.transparent,
                          onPressed: () {
                            validateEmail(context, emailController);
                          },
                        ),
                        /*Container(
                          height: 50,
                          width: 300,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 88, 163, 67),
                          ),
                          child: InkWell(
                            onTap: () {
                              validateEmail(context, emailController);
                            },
                            child: const Center(
                              child: Text(
                                "Reset",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),*/
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomText(
                              text: 'Remember password ?  ',
                              color: Colors.grey,
                            ),
                            /*const Text(
                              "Remember password ?  ",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),*/
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                );
                              },
                              child: const CustomText(
                                text: 'Login',
                                color: Colors.blue,
                              ),

                              /*const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),
                              ),*/
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
