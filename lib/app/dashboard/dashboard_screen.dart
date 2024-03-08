import 'package:codejam/core/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Metrics'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: cards.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 3 / 4),
            itemBuilder: (_, index) {
              final card = cards[index];
              return CustomCard(
                  title: card.title,
                  url: card.url,
                  intake: card.intake,
                  method: card.method,
                  time: card.time);
            },
          ),
          Row(
            children: [
              CustomTextFormField(
                label: 'Protein',
                controller: TextEditingController(),
              ),
              CustomTextFormField(
                label: 'Carbs',
                controller: TextEditingController(),
              ),
            ],
          ),
          Row(
            children: [
              CustomTextFormField(
                label: 'Fiber',
                controller: TextEditingController(),
              ),
              CustomTextFormField(
                label: 'Fat',
                controller: TextEditingController(),
              ),
            ],
          ),
          CustomTextFormField(
            label: 'Calories',
            controller: TextEditingController(),
          ),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: Column(
            children: [
              SizedBox(
                height: 14,
              ),
              Text(
                'g',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),

          labelText: label,
          fillColor: Colors.grey.shade900,
          filled: true,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(5.0),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val!.length == 0) {
            return "Protein cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.number,
        style: new TextStyle(
          fontFamily: "Inter",
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
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
    return Center(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey.shade900,
        ),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
            ),
            SvgPicture.asset(
              height: 150,
              width: 150,
              fit: BoxFit.scaleDown,
              url,
            ),
            Text.rich(
              TextSpan(
                text: intake,
                style: TextStyle(fontSize: 20),
                children: <InlineSpan>[
                  TextSpan(
                    text: method,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              time,
              style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
