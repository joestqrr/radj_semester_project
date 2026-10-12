import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.home_outlined, size: 48),
            const SizedBox(height: 12),
            const Text(
              'Home Page',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Start of client-side flow.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppButton(
              text: 'Go to Login',
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
