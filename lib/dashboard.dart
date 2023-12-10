import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard/desktop/desktop_dashboard.dart';
import 'package:responsive_dashboard/dashboard/mobile/mobile_dashboard.dart';
import 'package:responsive_dashboard/dashboard/tablet/tablet_dashboard.dart';
import 'package:responsive_dashboard/widget/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
