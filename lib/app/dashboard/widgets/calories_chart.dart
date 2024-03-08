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
          children: [
            ListTile(
              leading: CircleAvatar(
                // backgroundColor: Colors.green.shade200,
                child:  SvgPicture.asset(
                  height: 50,
                  width: 50,
                  fit: BoxFit.scaleDown,
                  'assets/icons/fruit.svg'
                ),
              ),
              title: Text('231 of 250 Cal'),
              subtitle: Text('Add more calories to your diet'),
              trailing: CircleAvatar(
                backgroundColor: Colors.amber,
               child: Icon(Icons.add,color: Colors.black,),
              ),
            ),
            ChartsRow(),
          ],
        ),
      ),
    );
  }
}
