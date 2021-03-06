import 'package:flutter/material.dart';

import "./PaymentTitle.dart";
import "./PaymentMethodList.dart";
import "./NextStepButton.dart";

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Frontloops 01"),
          ),
          body: Frontloops(),
        ),
      ),
    );

class Frontloops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "./assets/images/background.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Container(
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PaymentTitle(),
              Divider(
                height: 2.0,
                thickness: 2.0,
              ),
              PaymentMethodList(),
              NextStepButton(),
            ],
          ),
          width: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(5.0, 5.0),
                color: Colors.black38,
                spreadRadius: 3.0,
                blurRadius: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
