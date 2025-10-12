import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color seedColor = Color.fromARGB(255, 97, 75, 195);

class AppTheme {
  AppTheme._();

  // ===========================================================================
  // ==                            LIGHT THEME                                ==
  // ===========================================================================
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
    textTheme:
        GoogleFonts.plusJakartaSansTextTheme(ThemeData.light().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: ColorScheme.fromSeed(seedColor: seedColor).onSurface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      color: ColorScheme.fromSeed(seedColor: seedColor).surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorScheme.fromSeed(seedColor: seedColor).primary,
        foregroundColor: ColorScheme.fromSeed(seedColor: seedColor).onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor:
          ColorScheme.fromSeed(seedColor: seedColor).surfaceContainerHighest,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor:
          ColorScheme.fromSeed(seedColor: seedColor).secondaryContainer,
      surfaceTintColor: Colors.transparent,
    ),
  );

  // ===========================================================================
  // ==                             DARK THEME                                ==
  // ===========================================================================
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
    textTheme: GoogleFonts.plusJakartaSansTextTheme(ThemeData.dark().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: ColorScheme.fromSeed(
              seedColor: seedColor, brightness: Brightness.dark)
          .onSurface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      color: ColorScheme.fromSeed(
              seedColor: seedColor, brightness: Brightness.dark)
          .surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorScheme.fromSeed(
                seedColor: seedColor, brightness: Brightness.dark)
            .primary,
        foregroundColor: ColorScheme.fromSeed(
                seedColor: seedColor, brightness: Brightness.dark)
            .onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: ColorScheme.fromSeed(
              seedColor: seedColor, brightness: Brightness.dark)
          .surfaceContainerHighest,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: ColorScheme.fromSeed(
              seedColor: seedColor, brightness: Brightness.dark)
          .secondaryContainer,
      surfaceTintColor: Colors.transparent,
    ),
  );
}
