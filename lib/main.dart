import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_contador/screens/home_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color playstationBlue = Color(0xFF0070D1);
    
    final darkAppTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark, 
      
      colorScheme: ColorScheme.fromSeed(
        seedColor: playstationBlue,
        brightness: Brightness.dark,
        surface: const Color(0xFF1A1A1A),
        onSurface: Colors.white,
      ),

      scaffoldBackgroundColor: const Color(0xFF121212), 

      cardColor: const Color(0xFF1A1A1A), 

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent, 
        foregroundColor: Colors.white,       
        elevation: 0,                        
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: playstationBlue, 
        foregroundColor: Colors.white,
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF1A1A1A), 
        selectedItemColor: Colors.white,     
        unselectedItemColor: Colors.grey,    
        showUnselectedLabels: true,          
        type: BottomNavigationBarType.fixed, 
      ),

      textTheme: GoogleFonts.orbitronTextTheme(
        Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,    
          displayColor: Colors.white, 
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Contador Playstation',
      theme: darkAppTheme, 
      home: const HomeScreen(),
    );
  }
}