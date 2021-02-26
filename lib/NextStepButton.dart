import "package:flutter/material.dart";

Color buttonColor = Color.fromRGBO(80, 129, 215, 1);

class NextStepButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
      ),
      child: TextButton(
        onPressed: () {},
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "NEXT STEP",
                style: TextStyle(
                  fontFamily: "Open Sans",
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              WidgetSpan(
                child: Transform.translate(
                  offset: Offset(0, 3),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
