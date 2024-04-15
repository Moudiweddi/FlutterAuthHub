import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final String pageTitle;
  final Widget body;
  const BasePage({
    super.key,
    required this.pageTitle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: body,
    );
  }
}
