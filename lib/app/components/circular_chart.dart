import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({
    super.key,
    required this.percent,
    this.mainColor = const Color.fromRGBO(0, 220, 252, 1),
    this.bgColor = const Color.fromRGBO(230, 230, 230, 1),
  });

  final double percent;
  final Color mainColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
          widget: Text(
            '${percent.toInt()}%',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
      series: <DoughnutSeries<_ChartData, String>>[
        DoughnutSeries<_ChartData, String>(
          explode: true,
          innerRadius: '20',
          radius: '30',
          // strokeWidth: 3,
          dataSource: <_ChartData>[
            _ChartData(
              x: '-',
              y: percent,
              pointColor: mainColor,
            ),
            _ChartData(
              x: 'bg',
              y: 100 - percent,
              pointColor: bgColor,
            ),
          ],
          animationDuration: 0.2,
          xValueMapper: (_ChartData data, _) => data.x as String,
          yValueMapper: (_ChartData data, _) => data.y,
          pointColorMapper: (_ChartData data, _) => data.pointColor,
        )
      ],
    );
  }
}

class _ChartData {
  _ChartData({
    required this.x,
    required this.y,
    required this.pointColor,
  });

  final String x;
  final num y;
  final Color pointColor;
}
