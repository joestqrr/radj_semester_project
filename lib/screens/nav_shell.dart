import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import 'dashboard_screen.dart';

class NavShell extends StatefulWidget {
  const NavShell({super.key});

  @override
  State<NavShell> createState() => _NavShellState();
}

class _NavShellState extends State<NavShell> {
  int _index = 0;

  static const List<Widget> _pages = [
    DashboardScreen(),
    _ModulePlaceholder(),
  ];

  static const List<String> _titles = [
    'Dashboard',
    'Modules',
  ];

  void _onTap(int value) {
    setState(() => _index = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_index]),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('RADJ Semester Project'),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home Page'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.home);
              },
            ),
            ListTile(
              leading: const Icon(Icons.login_outlined),
              title: const Text('Login Page'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.login);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard_outlined),
              title: const Text('Navigation Shell'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _index,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'Modules',
          ),
        ],
      ),
    );
  }
}

class _ModulePlaceholder extends StatelessWidget {
  const _ModulePlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.widgets_outlined, size: 48),
            SizedBox(height: 12),
            Text(
              'Module Placeholder',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Second tab to prove shell navigation works.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
