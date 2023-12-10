import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/Header.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Header(),
      ),
    );
  }
}
