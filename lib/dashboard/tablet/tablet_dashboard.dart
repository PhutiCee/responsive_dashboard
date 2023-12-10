import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/Header.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Header(),
      ),
    );
  }
}
