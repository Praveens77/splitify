import 'package:flutter/material.dart';
import 'package:splitify/utils.dart';

class ExpenseHistoryPage extends StatelessWidget {
  const ExpenseHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: customText("Expense History", 24.0, black, FontWeight.w700),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHistory(context, "29-04-2023 08:43", "Onions", "45", "Mike"),
              buildHistory(context, "29-04-2023 08:43", "Eggs", "42", "John"),
              buildHistory(context, "29-04-2023 08:43", "Sugar", "30", "Mike"),
              buildHistory(context, "29-04-2023 08:43", "Oil, Bread", "200", "Alice"),
              buildHistory(context, "29-04-2023 08:43", "Onions", "45", "Mike"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHistory(context, time, item, price, name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: grey,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              buildRow("Item", item),
              const SizedBox(height: 5.0),
              buildRow("Price", price),
              const SizedBox(height: 5.0),
              buildRow("Paid by", name),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(item, name) {
    return Row(
      children: [
        customText("$item: ", 20.0, black, FontWeight.bold),
        customText(name, 20.0, black, FontWeight.w400),
      ],
    );
  }
}
