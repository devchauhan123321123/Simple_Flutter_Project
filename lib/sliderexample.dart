import 'package:flutter/material.dart';

class sliderexample extends StatefulWidget {
  const sliderexample({super.key});

  @override
  State<sliderexample> createState() => _sliderexampleState();
}

class _sliderexampleState extends State<sliderexample> {
  double value = 20;

  void updateSlider() {
    setState(() {
      value = 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 100,
              label: value.round().toString(),
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),
            Text('Value:${value.round()}'),
            ElevatedButton(
              onPressed: updateSlider,
              child: const Text('Set value to 50'),
            ),
          ],
        ),
      ),
    );
  }
}
