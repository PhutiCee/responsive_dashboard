import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/nav_item.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade500,
      child: ListView(
        children: [
          const DrawerHeader(child: CircleAvatar()),
          ...navItem.map((item) {
            return ListTile(
              leading: item['icon'],
              title: Text(item['title'], style: const TextStyle(color: Colors.white),),
            );
          })
        ],
      ),
    );
  }
}
