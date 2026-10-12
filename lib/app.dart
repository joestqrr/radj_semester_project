import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'screens/dashboard_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/nav_shell.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RADJ Semester Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.shell: (context) => const NavShell(),
        AppRoutes.dashboard: (context) => Scaffold(
              appBar: AppBar(title: Text('Dashboard')),
              body: DashboardScreen(),
            ),
      },
    );
  }
}
