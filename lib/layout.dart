import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/local_navigator.dart';
import 'package:responsive_dashboard/helpers/responsive.dart';
import 'package:responsive_dashboard/widgets/large_screen.dart';
import 'package:responsive_dashboard/widgets/side_menu.dart';
import 'package:responsive_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(
          large: LargeScreen(),
          small: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )),
      drawer: Drawer(
        child: SideMenu(),
      ),
    );
  }
}
