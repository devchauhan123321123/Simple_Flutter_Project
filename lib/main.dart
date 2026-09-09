import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Display',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SimpleDisplayScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SimpleDisplayScreen extends StatefulWidget {
  const SimpleDisplayScreen({super.key});

  @override
  State<SimpleDisplayScreen> createState() => _SimpleDisplayScreenState();
}

class _SimpleDisplayScreenState extends State<SimpleDisplayScreen> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Text Input
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Type something...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.edit),
              ),
              onChanged: (value) {
                setState(() {
                  _displayText = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // Display Below
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: [
                  const Text(
                    'Display:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _displayText.isEmpty ? 'Nothing typed yet' : _displayText,
                    style: TextStyle(
                      fontSize: _displayText.isEmpty ? 16 : 24,
                      color: _displayText.isEmpty ? Colors.grey : Colors.black,
                      fontWeight: _displayText.isEmpty
                          ? FontWeight.normal
                          : FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Clear Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller.clear();
                  _displayText = '';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Clear Text'),
            ),
          ],
        ),
      ),
    );
  }
}
