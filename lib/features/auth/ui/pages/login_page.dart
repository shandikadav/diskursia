import 'package:diskursia/features/auth/ui/widgets/login_page_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          children: [
            HeaderLoginSection(),
            SizedBox(
              height: 24,
            ),
            FormLoginSection(),
          ],
        ),
      )),
    );
  }
}
