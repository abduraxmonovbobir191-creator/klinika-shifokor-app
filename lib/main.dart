import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const GavxarDoctorApp());
}

class GavxarDoctorApp extends StatelessWidget {
  const GavxarDoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gavxar Clinic - Shifokor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2C3E50),
          brightness: Brightness.light,
          primary: const Color(0xFF2C3E50),
          secondary: const Color(0xFF3498DB),
        ),
        textTheme: GoogleFonts.interTextTheme(),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFF1A1A1A),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      home: const DoctorHomeScreen(),
    );
  }
}

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Xush kelibsiz, Doktor',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
              ).animate().fadeIn().slideY(begin: 0.2),
              const SizedBox(height: 8),
              Text('Bugungi navbatlar', style: TextStyle(color: Colors.grey[600])),
              const SizedBox(height: 32),
              _buildStatsRow(),
              const SizedBox(height: 32),
              Text('Navbatlar ro\'yxati', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              _buildAppointmentItem('Aliyev Jasur', '15:30', 'Terapevt'),
              _buildAppointmentItem('Karimova Malika', '16:00', 'Kardiolog'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsRow() {
    return Row(
      children: [
        Expanded(child: _statCard('Bugun', '8', const Color(0xFF3498DB))),
        const SizedBox(width: 16),
        Expanded(child: _statCard('Kutayotgan', '3', const Color(0xFFE67E22))),
      ],
    ).animate().fadeIn(delay: 150.ms);
  }

  Widget _statCard(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 15, offset: const Offset(0, 4))],
      ),
      child: Column(
        children: [
          Text(value, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildAppointmentItem(String name, String time, String specialty) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 10, offset: const Offset(0, 2))],
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: const Color(0xFF3498DB).withOpacity(0.1), child: const Icon(Icons.person, color: Color(0xFF3498DB))),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(specialty, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
              ],
            ),
          ),
          Text(time, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    ).animate().fadeIn().slideX(begin: 0.05);
  }
}
