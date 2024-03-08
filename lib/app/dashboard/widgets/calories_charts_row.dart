import 'package:codejam/app/components/circular_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartsRow extends StatelessWidget {
  const ChartsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: CircularChart(
              percent: 65,
            ),
          ),
        ),
        Expanded(
          child: CircularChart(
            percent: 65,
          ),
        ),
        Expanded(
          child: CircularChart(
            percent: 65,
          ),
        ),
        Expanded(
          child: CircularChart(
            percent: 65,
          ),
        ),
      ],
    );
  }
}
