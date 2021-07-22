import 'package:adminpanel/controllers/MenuController.dart';
import 'package:adminpanel/reponsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import '../../screens/components/side_menu.dart';
import '../../screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SildeMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SildeMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
