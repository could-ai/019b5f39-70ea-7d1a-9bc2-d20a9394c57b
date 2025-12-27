import 'package:flutter/material.dart';
import 'package:couldai_user_app/core/theme/app_theme.dart';
import 'package:couldai_user_app/features/onboarding/screens/splash_screen.dart';
import 'package:couldai_user_app/features/auth/screens/login_screen.dart';
import 'package:couldai_user_app/features/dashboard/screens/user_dashboard_screen.dart';
import 'package:couldai_user_app/features/admin/screens/admin_dashboard_screen.dart';

void main() {
  runApp(const GeminiZeroApp());
}

class GeminiZeroApp extends StatelessWidget {
  const GeminiZeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gemini Zero',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const UserDashboardScreen(),
        '/admin': (context) => const AdminDashboardScreen(),
      },
    );
  }
}
