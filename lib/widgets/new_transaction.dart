import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function _addNewTransaction;
  NewTransaction(this._addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        TextField(
          decoration: InputDecoration(labelText: "Title"),
          // onChanged: (value) {
          //   titleInput = value;
          // },
          controller: titleController,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Amount"),
          // onChanged: (value) {
          //   amountInput = value;
          //   print("amount: " + value.toString());
          // },
          controller: amountController,
        ),
        TextButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);

              _addNewTransaction(
                  titleController.text, double.parse(amountController.text));
            },
            child: Text(
              "Add Transaction",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ))
      ]),
    ));
  }
}
