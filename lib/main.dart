import 'package:flutter/material.dart';
// Import your screens here (make sure these files exist)
import '/splash/splash_screen.dart';
import '/screens/login_screen.dart';
import '/screens/signup_screen.dart';
import '/dashboard/home_screen.dart';
import '/screens/transfer_screen.dart';
import '/screens/transfer_friend_screen.dart';
import '/screens/transfer_success_screen.dart';
import '/screens/more_menu_screen.dart';

void main() {
  runApp(CashEaseApp());
}

class CashEaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CashEase E-Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF5D2DFD),
        scaffoldBackgroundColor: Color(0xFFF9FAFF),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF5D2DFD)),
          titleTextStyle: TextStyle(
            color: Color(0xFF1A1A1A),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF5D2DFD),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0xFF5D2DFD)),
          ),
          labelStyle: TextStyle(color: Color(0xFF5D2DFD)),
          prefixIconColor: Color(0xFF5D2DFD),
        ),
      ),
      initialRoute: '/splash', // Change to '/splash' if you add splash screen
      routes: {
        '/splash': (context) => SplashScreen(),
        '/signup': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/transfer': (context) => TransferScreen(),
        '/more-menu': (context) => MoreMenuScreen(),
        '/transfer-friend': (context) => TransferToFriendsScreen(),
        '/transfer-success': (context) => TransferSuccessScreen(),
      },
    );
  }
}
