import "package:flutter/material.dart";

import "./PaymentMethod.dart";

Color activeColor = Color.fromRGBO(30, 30, 30, 1);
Color inActiveColor = Color.fromRGBO(158, 158, 158, 1);

class PaymentCard extends StatelessWidget {
  final PaymentMethod paymentCard;
  PaymentCard({this.paymentCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.black12,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 10.0,
          ),
          child: ListTile(
            leading: Image.asset(
              "./assets/images/${paymentCard.cardImage}",
              scale: 15.0,
            ),
            title: Transform.translate(
              offset: Offset(12, 0),
              child: Text(
                paymentCard.cardTitle,
                style: TextStyle(
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                  color: paymentCard.isActive ? activeColor : inActiveColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
