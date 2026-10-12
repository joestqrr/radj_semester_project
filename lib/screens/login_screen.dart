import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.login_outlined, size: 48),
            const SizedBox(height: 12),
            const Text(
              'Login Page',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const AppTextField(hintText: 'Email'),
            const SizedBox(height: 12),
            const AppTextField(hintText: 'Password', obscureText: true),
            const SizedBox(height: 16),
            AppButton(
              text: 'Login',
              onPressed: () {
                // Placeholder auth: go straight to shell.
                Navigator.pushReplacementNamed(context, AppRoutes.shell);
              },
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
