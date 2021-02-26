import "package:flutter/material.dart";

import "./PaymentBrain.dart";
import "./PaymentCard.dart";

PaymentBrain paymentBrain = PaymentBrain();

class PaymentMethodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemCount: paymentBrain.getPaymentMethods().length,
      itemBuilder: (BuildContext context, int index) {
        return PaymentCard(
          paymentCard: paymentBrain.getPaymentMethods()[index],
        );
      },
    );
  }
}
