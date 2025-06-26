class HomePage extends StatelessWidget {
  final BillController controller = Get.put(BillController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bill Splitter')),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Enter Total Bill'),
            onChanged: controller.updateBill,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter Tip Percentage'),
            onChanged: controller.updateTip,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter Number of People'),
            onChanged: controller.updatePeople,
          ),
          Obx(() => Text('Each Person Pays: \$${controller.amountPerPerson}')),
        ],
      ),
    );
  }
}
