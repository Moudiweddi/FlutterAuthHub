import 'package:flutter/material.dart';
import 'package:testproject/utils/form_validation.dart';
import 'package:testproject/widgets/button.dart';
import 'package:testproject/widgets/text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                      text: 'Login',
                      fontSize: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: 'Welcome back',
                      fontSize: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
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
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                    hintText: "email address",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: "email address",
                                    prefixIcon: Icon(
                                      Icons.email,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(),
                                child: TextFormField(
                                  controller: _passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: !_isPasswordVisible,
                                  decoration: InputDecoration(
                                    labelText: "password",
                                    border: const OutlineInputBorder(),
                                    hintText: "password",
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                    ),
                                    suffix: InkWell(
                                      onTap: () {
                                        setState(
                                          () {
                                            _isPasswordVisible =
                                                !_isPasswordVisible;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/forgotPassword');
                                      },
                                      child: const CustomText(
                                        text: 'Forgot Password',
                                        color: Colors.blue,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomActionButton(
                          text: 'Login',
                          buttonColor: Colors.green,
                          textColor: Colors.white,
                          borderColor: Colors.white,
                          onPressed: () {
                            // Perform email and password validation
                            String email = _emailController.text.trim();
                            String password = _passwordController.text.trim();

                            if (!FormValidator.isEmailValid(email)) {
                              FormValidator.showAlertDialog(context, "Error!",
                                  "Please enter a valid email address.");
                              return; // Exit early if email is invalid
                            }

                            if (!FormValidator.isPasswordValid(password)) {
                              FormValidator.showAlertDialog(context, "Error!",
                                  "Password must be at least 6 characters long.");
                              return; // Exit early if password is invalid
                            }

                            // If both email and password are valid, proceed with login

                            Navigator.pushNamed(context, '/dashboardPage');
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CustomText(
                                text: 'Not a member ? ',
                                color: Colors.grey,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/createAccount');
                                  },
                                  child: const CustomText(
                                    text: 'Register Now',
                                    color: Colors.blue,
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(),
                            ),
                          ],
                        ),
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
