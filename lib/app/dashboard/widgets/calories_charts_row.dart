import 'package:codejam/app/components/circular_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartsRow extends StatelessWidget {
  const ChartsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 64,
          height: 64,
          child: CircularChart(
            percent: 65,
          ),
        ),
        SizedBox(
          width: 64,
          height: 64,
          child: CircularChart(
            percent: 65,
          ),
        ),
        SizedBox(
          width: 64,
          height: 64,
          child: CircularChart(
            percent: 65,
          ),
        ),
        SizedBox(
          width: 64,
          height: 64,
          child: CircularChart(
            percent: 65,
          ),
        ),
      ],
    );
  }
}
