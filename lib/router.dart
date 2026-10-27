import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main.dart';

final doctorRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DoctorHomeScreen(),
    ),
  ],
);
