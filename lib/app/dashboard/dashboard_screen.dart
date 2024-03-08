import 'package:codejam/app/components/custom_text_form_field.dart';
import 'package:codejam/app/dashboard/widgets/calories_chart.dart';
import 'package:codejam/app/dashboard/widgets/dashboard_card.dart';
import 'package:codejam/core/models/card_model.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool enableRemove = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Metrics'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  enableRemove = !enableRemove;
                });
              },
              icon: const Icon(Icons.edit)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              runAlignment: WrapAlignment.spaceEvenly,
              children: List.generate(
                cards.length,
                (index) => Stack(
                  children: [
                    DashboardCard(
                      title: cards[index].title,
                      url: cards[index].url,
                      intake: cards[index].intake,
                      method: cards[index].method,
                      time: cards[index].time,
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            cards.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: enableRemove ? Colors.red : Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CaloriesChart(),
          ],
        ),
      ),
    );
  }
}
