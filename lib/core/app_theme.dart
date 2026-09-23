import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Brand Colors
  static const Color primaryNavy = Color(0xFF0F172A);
  static const Color primaryBlue = Color(0xFF2563EB);
  static const Color deepIndigo = Color(0xFF1E1B4B);
  static const Color darkCardBlue = Color(0xFF1E2652);
  static const Color accentMagenta = Color(0xFFD946EF);
  static const Color accentPink = Color(0xFFEC4899);

  // Background & Surfaces
  static const Color bgCanvas = Color(0xFFF1F5F9);
  static const Color cardWhite = Colors.white;
  static const Color borderLight = Color(0xFFE2E8F0);

  // Text Colors
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color textMuted = Color(0xFF94A3B8);

  // Status & Badge Colors
  static const Color greenActive = Color(0xFF16A34A);
  static const Color greenBadgeBg = Color(0xFFDCFCE7);
  static const Color redAlert = Color(0xFFDC2626);
  static const Color redBadgeBg = Color(0xFFFEE2E2);
  static const Color amberWarning = Color(0xFFD97706);
  static const Color amberBadgeBg = Color(0xFFFEF3C7);
  static const Color blueBadgeBg = Color(0xFFDBEAFE);
  static const Color purpleBadgeBg = Color(0xFFF3E8FF);
  static const Color purpleText = Color(0xFF7E22CE);

  // Card Gradients
  static const LinearGradient businessNumberGradient = LinearGradient(
    colors: [Color(0xFF1E1B4B), Color(0xFF2D2B75), Color(0xFF3730A3)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient buttonGradient = LinearGradient(
    colors: [Color(0xFF1D4ED8), Color(0xFF2563EB)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: bgCanvas,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryBlue,
        primary: primaryBlue,
        surface: cardWhite,
      ),
      textTheme: GoogleFonts.interTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
    );
  }
}
