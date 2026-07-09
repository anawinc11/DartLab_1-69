abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid \$$amount via Credit Card');
  }
}

class PromptPay implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid \$$amount via PromptPay');
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid \$$amount via Cash on Delivery');
  }
}
void main() {
  PaymentMethod p1 = CreditCard();
  PaymentMethod p2 = PromptPay();
  PaymentMethod p3 = CashOnDelivery();

  p1.pay(100.0);
  p2.pay(200.0);
  p3.pay(300.0);
}