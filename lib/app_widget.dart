
// import 'package:blog_minimal/screens/signup.dart';
import 'package:firebase_authentication/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSerif().fontFamily,
      ),
      home: RegistrationScreen(),
    );
  }
}
