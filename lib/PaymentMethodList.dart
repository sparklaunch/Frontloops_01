import "package:flutter/material.dart";

import "./PaymentBrain.dart";
import "./PaymentCard.dart";

PaymentBrain paymentBrain = PaymentBrain();

class PaymentMethodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: paymentBrain.getPaymentMethods().length,
      itemBuilder: (BuildContext context, int index) {
        return PaymentCard(
          paymentMethod: paymentBrain.getPaymentMethods()[index],
        );
      },
    );
  }
}
