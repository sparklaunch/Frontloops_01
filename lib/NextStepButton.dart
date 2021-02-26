import "package:flutter/material.dart";

class NextStepButton extends StatefulWidget {
  @override
  _NextStepButtonState createState() => _NextStepButtonState();
}

class _NextStepButtonState extends State<NextStepButton> {
  Color buttonColor = Color.fromRGBO(80, 129, 215, 1);
  void tappedDown(TapDownDetails detail) {
    setState(() {
      this.buttonColor = Color.fromRGBO(75, 131, 231, 1);
    });
  }

  void tappedUp(TapUpDetails detail) {
    setState(() {
      this.buttonColor = Color.fromRGBO(80, 129, 215, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: this.buttonColor,
      ),
      child: GestureDetector(
        onTapDown: tappedDown,
        onTapUp: tappedUp,
        child: TextButton(
          onPressed: null,
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
      ),
    );
  }
}
