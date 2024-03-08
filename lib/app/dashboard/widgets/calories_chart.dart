import 'package:codejam/app/components/custom_text_form_field.dart';
import 'package:codejam/app/dashboard/widgets/calories_charts_row.dart';
import 'package:codejam/utilities/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                // backgroundColor: Colors.green.shade200,
                child: SvgPicture.asset(
                    height: 50,
                    width: 50,
                    fit: BoxFit.scaleDown,
                    'assets/icons/fruit.svg'),
              ),
              title: const Text('231 of 250 Cal'),
              subtitle: Text("Add more calories to your diet"),
              trailing: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 64,
              child: const ChartsRow(),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CustomTextFormField(
                  label: 'Protein',
                  controller: TextEditingController(),
                ),
                SizedBox(width: 8),
                CustomTextFormField(
                  label: 'Carbs',
                  controller: TextEditingController(),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CustomTextFormField(
                  label: 'Fiber',
                  controller: TextEditingController(),
                ),
                SizedBox(width: 8),
                CustomTextFormField(
                  label: 'Fat',
                  controller: TextEditingController(),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CustomTextFormField(
                  label: 'Calories',
                  controller: TextEditingController(),
                ),
              ],
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
