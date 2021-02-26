import "package:flutter/material.dart";

import "./PaymentMethod.dart";

Color activeColor = Color.fromRGBO(30, 30, 30, 1);
Color inActiveColor = Color.fromRGBO(158, 158, 158, 1);
Color checkColor = Color.fromRGBO(100, 172, 89, 1);

class PaymentCard extends StatefulWidget {
  final PaymentMethod paymentMethod;
  PaymentCard({this.paymentMethod});

  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  Color defaultColor = Colors.white;
  void tappedDown(TapDownDetails detail) {
    setState(() {
      this.defaultColor = Color.fromRGBO(239, 239, 239, 1);
    });
  }

  void tappedUp(TapUpDetails detail) {
    setState(() {
      this.defaultColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: this.tappedDown,
      onTapUp: this.tappedUp,
      child: Container(
        decoration: BoxDecoration(
          color: this.defaultColor,
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
                "./assets/images/${this.widget.paymentMethod.cardImage}",
                scale: 15.0,
              ),
              title: Transform.translate(
                offset: Offset(12, 0),
                child: Text(
                  this.widget.paymentMethod.cardTitle,
                  style: TextStyle(
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                    color: this.widget.paymentMethod.isActive
                        ? activeColor
                        : inActiveColor,
                  ),
                ),
              ),
              trailing: this.widget.paymentMethod.isActive
                  ? Transform.translate(
                      offset: Offset(20, 0),
                      child: Icon(
                        Icons.check,
                        color: checkColor,
                        size: 30.0,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
