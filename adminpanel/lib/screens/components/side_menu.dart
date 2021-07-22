import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SildeMenu extends StatelessWidget {
  const SildeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_dashbord.svg',
              title: 'Dashbord',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_tran.svg',
              title: 'Transaction',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_task.svg',
              title: 'Task',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_doc.svg',
              title: 'Documents',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_store.svg',
              title: 'Store',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_notification.svg',
              title: 'Notification',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_profile.svg',
              title: 'Profile',
            ),
            DrawListTitle(
              press: () {},
              svgSrc: 'assets/icons/menu_setting.svg',
              title: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawListTitle extends StatelessWidget {
  const DrawListTitle({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
