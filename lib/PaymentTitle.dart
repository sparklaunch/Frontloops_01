import "package:flutter/material.dart";

import "./Dot.dart";

Color stressColor = Color.fromRGBO(30, 30, 30, 1);
double gapBetweenDots = 10.0;

class PaymentTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dot(isActive: true),
                SizedBox(
                  width: gapBetweenDots,
                ),
                Dot(isActive: false),
                SizedBox(
                  width: gapBetweenDots,
                ),
                Dot(isActive: false),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              "PAYMENT METHOD",
              style: TextStyle(
                fontFamily: "Open Sans",
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 1.0,
                color: stressColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
