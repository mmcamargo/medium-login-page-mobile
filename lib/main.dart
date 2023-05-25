import 'package:flutter/material.dart';
import 'package:medium_login_page_mobile/login_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Medium",
      home: LoginPage(),
    );
  }
}
