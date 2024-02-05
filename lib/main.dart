import 'package:flutter/material.dart';
import 'package:profile_grid/grid_profile.dart';
import 'package:profile_grid/home_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GridProfile();
  }
}