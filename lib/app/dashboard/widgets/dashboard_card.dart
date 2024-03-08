import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.title,
    required this.url,
    this.intake,
    this.method,
    required this.time,
  });

  final String title;
  final String url;
  final String? intake;
  final String? method;
  final String time;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2;
    return SizedBox(
      width: width,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.grey.shade900,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(
                  height: 110,
                  width: 150,
                  fit: BoxFit.scaleDown,
                  url,
                ),
              ),
              const SizedBox(height: 20),
              if (intake != null && method != null)
                Text.rich(
                  TextSpan(
                    text: intake!,
                    style: const TextStyle(fontSize: 16),
                    children: [
                      TextSpan(
                        text: method!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
