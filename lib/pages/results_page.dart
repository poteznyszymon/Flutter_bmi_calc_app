import 'dart:math';

import 'package:bmi_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  final bool male;
  final bool female;
  final int height;
  final int weight;
  final int age;
  const ResultsPage({
    super.key,
    required this.male,
    required this.female,
    required this.height,
    required this.weight,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                const SizedBox(width: 130),
                Text(
                  "BMI",
                  style:
                      GoogleFonts.bebasNeue(fontSize: 40, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          Text(
            "Your results",
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 40),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 485,
              decoration: BoxDecoration(
                color: CustomColor.tile,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Center(
                    child: Text(
                      ((weight / pow((height / 10), 2)) * 100)
                          .toStringAsFixed(1),
                      style: GoogleFonts.bebasNeue(
                          fontSize: 180, color: Colors.white),
                    ),
                  ),
                  Text(
                    ((weight / pow(height / 10, 2)) < 0.18)
                        ? "underweight"
                        : ((weight / pow(height / 10, 2)) < 0.25)
                            ? "normal"
                            : ((weight / pow(height / 10, 2)) < 0.30)
                                ? "overweight"
                                : "obesity",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                        color: ((weight / pow(height / 10, 2)) < 0.18)
                            ? Colors.red
                            : ((weight / pow(height / 10, 2)) < 0.25)
                                ? Colors.green
                                : ((weight / pow(height / 10, 2)) < 0.30)
                                    ? Colors.yellow
                                    : Colors.red),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.orange[300]),
            child: Center(
              child: GestureDetector(
                child: Text(
                  "recalculate your BMI",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 25,
                  ),
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
