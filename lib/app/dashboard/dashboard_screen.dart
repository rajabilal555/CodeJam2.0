import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      appBar: AppBar(title: Text('Metrics'), actions: [IconButton(onPressed: (){}, icon: Icon(Icons.edit))],),
    ),
    );
  }
}
