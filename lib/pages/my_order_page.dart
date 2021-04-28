import 'package:flutter/material.dart';

import '../bloc_navigation_bloc/navigation_bloc.dart';

class OrderPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'OrderPage',
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
