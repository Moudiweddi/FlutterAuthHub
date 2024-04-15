import 'package:flutter/material.dart';
import 'package:testproject/utils/form_validation.dart';
import 'package:testproject/screens/login_page.dart';
import 'package:testproject/widgets/button.dart';

class CreateNewAccountPage extends StatefulWidget {
  const CreateNewAccountPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreateNewAccountPageState createState() => _CreateNewAccountPageState();
}

class _CreateNewAccountPageState extends State<CreateNewAccountPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController confpassword = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  bool isFullNameCheck = false;

  bool isGmailCheck = false;

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
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Create Your Account ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
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
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                    labelText: "Full Name ",
                                    prefixIcon: const Icon(
                                      Icons.person,
                                    ),
                                    suffix: InkWell(
                                      onTap: () {
                                        setState(
                                          () {
                                            isFullNameCheck = !isFullNameCheck;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        isFullNameCheck ? null : Icons.check,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                    labelText: "Your Gm@il",
                                    prefixIcon: const Icon(
                                      Icons.mail,
                                    ),
                                    suffix: InkWell(
                                      onTap: () {
                                        setState(
                                          () {
                                            isGmailCheck = !isGmailCheck;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        isGmailCheck ? null : Icons.check,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: _passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: !isPasswordVisible,
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                    labelText: "Password",
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                    ),
                                    suffix: InkWell(
                                      onTap: () {
                                        setState(
                                          () {
                                            isPasswordVisible =
                                                !isPasswordVisible;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: !isConfirmPasswordVisible,
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                    labelText: "Confirm Password",
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                    ),
                                    suffix: InkWell(
                                      onTap: () {
                                        setState(
                                          () {
                                            isConfirmPasswordVisible =
                                                !isConfirmPasswordVisible;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        isConfirmPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomActionButton(
                                text: 'create account',
                                buttonColor: Colors.green,
                                textColor: Colors.white,
                                borderColor: Colors.transparent,
                                onPressed: () {
                                  // Perform form validation
                                  String email = _emailController.text.trim();
                                  String password =
                                      _passwordController.text.trim();
                                  String confirmPassword =
                                      confpassword.text.trim();

                                  // Validate email
                                  if (!FormValidator.isEmailValid(email)) {
                                    FormValidator.showAlertDialog(
                                        context,
                                        "Error!",
                                        "Please enter a valid email address.");
                                    return;
                                  }

                                  // Validate password
                                  if (!FormValidator.isPasswordValid(
                                      password)) {
                                    FormValidator.showAlertDialog(
                                        context,
                                        "Error!",
                                        "Password must be at least 6 characters long.");
                                    return;
                                  }

                                  // Validate confirm password
                                  if (password != confirmPassword) {
                                    FormValidator.showAlertDialog(context,
                                        "Error!", "Passwords do not match.");
                                    return;
                                  }

                                  // If all validations pass, proceed with account creation
                                  // You can add your account creation logic here
                                  Navigator.pushNamed(context, '/login');
                                },
                              ),
                              /*Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey[400],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    validateEmail(context, _emailController);
                                    validatePassword(
                                        context, _passwordController);
                                    ConfirmPassword(context, confpassword,
                                        _passwordController);
                                  },
                                  child: const Center(
                                    child: Text(
                                      "Create account",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: const Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Already have an account ?  ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
