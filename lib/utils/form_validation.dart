import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FormValidator {
  static void showAlertDialog(
      BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  static bool isEmailValid(String email) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return password.length >= 6;
  }
}

void validateEmail(
    BuildContext context, TextEditingController emailController) {
  String email = emailController.text.trim();

  if (email.isEmpty) {
    FormValidator.showAlertDialog(
        context, "Error!", "Please enter your email.");
  } else if (!FormValidator.isEmailValid(email)) {
    FormValidator.showAlertDialog(
        context, "Error!", "Please enter a valid email address.");
  } else {
    if (kDebugMode) {
      print("Email is valid: $email");
    }
  }
}

void validatePassword(
    BuildContext context, TextEditingController passwordController) {
  String password = passwordController.text.trim();

  if (password.isEmpty) {
    FormValidator.showAlertDialog(
        context, "Error!", "Please enter your password.");
  } else if (!FormValidator.isPasswordValid(password)) {
    FormValidator.showAlertDialog(
        context, "Error!", "Password must be at least 6 characters long.");
  } else {
    if (kDebugMode) {
      print("Password is valid: $password");
    }
  }
}

Future<void> confirmPassword(
    BuildContext context,
    TextEditingController confirmController,
    TextEditingController passwordController) async {
  String password = passwordController.text.trim();
  String confPassword = confirmController.text.trim();

  if (confPassword.isEmpty) {
    FormValidator.showAlertDialog(
        context, "Error!", "Please confirm your password.");
  } else if (password != confPassword) {
    FormValidator.showAlertDialog(context, "Error confirm password!",
        "Please re-enter your correct password.");
  }
}
