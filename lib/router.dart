import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main.dart';
import 'screens/appointments_screen.dart';
import 'screens/profile_screen.dart';

final doctorRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DoctorHomeScreen(),
    ),
    GoRoute(
      path: '/appointments',
      builder: (context, state) => const DoctorAppointmentsScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const DoctorProfileScreen(),
    ),
  ],
);
