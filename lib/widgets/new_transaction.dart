import 'package:flutter/material.dart';

import '../models/transaction.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  // String titleInput;
  // String amountInput;
  final Function _addNewTransaction;
  NewTransaction(this._addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () {
                _addNewTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
