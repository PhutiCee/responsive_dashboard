import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/widget/responsive.dart';

import '../controller/side_menu_controller.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: sideMenuController.controlMenu,
            icon: const Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Dashboard"),
          )
      ],
    );
  }
}
