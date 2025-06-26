class BillController extends GetxController {
  var billAmount = 0.0.obs;
  var tipPercentage = 0.0.obs;
  var numberOfPeople = 1.obs;

  String get amountPerPerson {
    if (numberOfPeople.value == 0) return "0.00";
    double total = billAmount.value + (billAmount.value * tipPercentage.value / 100);
    return (total / numberOfPeople.value).toStringAsFixed(2);
  }

  void updateBill(String value) => billAmount.value = double.tryParse(value) ?? 0;
  void updateTip(String value) => tipPercentage.value = double.tryParse(value) ?? 0;
  void updatePeople(String value) => numberOfPeople.value = int.tryParse(value) ?? 1;
}
