import 'package:flutter/material.dart';

class Aclenderexample extends StatefulWidget {
  const Aclenderexample({super.key});

  @override
  State<Aclenderexample> createState() => _AclenderexampleState();
}

class _AclenderexampleState extends State<Aclenderexample> {
  DateTime? date;
  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (!mounted || picked == null) return;
    setState(() => date = picked);
  }

  void setdateValue() {
    setState(() {
      date = DateTime(2024, 1, 1);
    });
  }
  @override
  Widget build(BuildContext context) {
    final text = date == null ? "no Data" : "$date!.day-${date!.month}-${date!.year}";

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text(text),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text('Pick a date'),
            ),
            ElevatedButton(
              onPressed: setdateValue,
              child: const Text('Set date to 1 Jan 2024'),
            ),
          ],
        ),
      ),
    );
  }
}
