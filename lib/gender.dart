import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GenderPage(),
    );
  }
}

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gender Selection"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Male
            RadioListTile<String>(
              title: const Text("Male"),
              value: "Male",
              // ignore: deprecated_member_use
              groupValue: gender,
              // ignore: deprecated_member_use
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            // Female
            RadioListTile<String>(
              title: const Text("Female"),
              value: "Female",
              // ignore: deprecated_member_use
              groupValue: gender,
              // ignore: deprecated_member_use
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            Text(
              "Selected Gender: $gender",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}