import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(title: const Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF2C3E50),
              child: Icon(Icons.medical_services, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text('Dr. Aliyeva Nodira', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text('Terapevt', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 32),
            _item('Bugungi navbatlar', '8'),
            _item('Umumiy bemorlar', '142'),
            _item('Reyting', '4.8'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Chiqish'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF3498DB))),
        ],
      ),
    );
  }
}
