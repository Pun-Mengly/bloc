import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shcool_system/pages/home_page.dart';

import '../bloc_navigation_bloc/navigation_bloc.dart';
import '../sidebar/slidebar.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(HomePage()),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationStates) {
                return navigationStates as Widget;
              },
            ),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
