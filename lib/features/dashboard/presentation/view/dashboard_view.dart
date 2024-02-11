import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  static const String routeName = "/dashboard";
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}
