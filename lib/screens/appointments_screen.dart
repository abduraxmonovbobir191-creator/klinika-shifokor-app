import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DoctorAppointmentsScreen extends StatelessWidget {
  const DoctorAppointmentsScreen({super.key});

  final List<Map<String, String>> appointments = const [
    {'patient': 'Aliyev Jasur', 'time': '09:00', 'status': 'Kutilmoqda'},
    {'patient': 'Karimova Malika', 'time': '10:30', 'status': 'Tasdiqlangan'},
    {'patient': 'Toshmatov Akmal', 'time': '14:00', 'status': 'Kutilmoqda'},
    {'patient': 'Rahimova Sevara', 'time': '15:30', 'status': 'Yakunlangan'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(title: const Text('Navbatlar')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: appointments.length,
        itemBuilder: (context, index) {
          final apt = appointments[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 10, offset: const Offset(0, 2))],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFF3498DB).withOpacity(0.1),
                  child: const Icon(Icons.person, color: Color(0xFF3498DB)),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(apt['patient']!, style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text(apt['time']!, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: apt['status'] == 'Tasdiqlangan' ? Colors.green.withOpacity(0.1) : Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(apt['status']!, style: TextStyle(
                    color: apt['status'] == 'Tasdiqlangan' ? Colors.green : Colors.orange,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              ],
            ),
          ).animate().fadeIn(delay: (60 * index).ms);
        },
      ),
    );
  }
}
