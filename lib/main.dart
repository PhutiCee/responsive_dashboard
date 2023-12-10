import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/controller/side_menu_controller.dart';
import 'package:responsive_dashboard/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SideMenuController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dashboard',
      home: Home(),
    );
  }
}
