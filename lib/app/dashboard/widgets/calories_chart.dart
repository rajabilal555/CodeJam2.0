import 'package:codejam/app/dashboard/widgets/calories_charts_row.dart';
import 'package:codejam/utilities/theme/colors.dart';
import 'package:flutter/material.dart';

class CaloriesChart extends StatelessWidget {
  const CaloriesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        color: AppColors.cardColor,
        child: Column(
          children: [
            Text("Calories Chart"),
            ChartsRow(),
          ],
        ),
      ),
    );
  }
}
