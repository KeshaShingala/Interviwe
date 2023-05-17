import 'package:flutter/material.dart';

class CalculatedBMI extends StatelessWidget {
  CalculatedBMI({Key? key,required this.bmi}) : super(key: key);

  double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF090E21),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Your BMI Result",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              "NORMAL WEIGHT",
              style: TextStyle(
                color: Colors.green[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              "${bmi.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              "You have a normal body weight good Job",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6E6F7A),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}