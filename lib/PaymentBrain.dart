import "./PaymentMethod.dart";

class PaymentBrain {
  List<PaymentMethod> _paymentMethods = [
    PaymentMethod(
      cardImage: "visa.png",
      cardTitle: "VISA",
      isActive: false,
    ),
    PaymentMethod(
      cardImage: "mastercard.png",
      cardTitle: "MASTERCARD",
      isActive: true,
    ),
    PaymentMethod(
      cardImage: "maestro.png",
      cardTitle: "MAESTRO",
      isActive: false,
    ),
  ];
  List<PaymentMethod> getPaymentMethods() {
    return this._paymentMethods;
  }
}
