import 'package:flutter/material.dart';
import 'counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterController _controller = CounterController();
  double _currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TASK 1: Multi-Step Counter"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Total Hitungan:"),
            Text('${_controller.value}', style: const TextStyle(fontSize: 40)),

            const SizedBox(height: 20),
            const Text("Atur Step:"),
            Slider(
              value: _currentStep,
              min: 1,
              max: 10,
              divisions: 9,
              label: _currentStep.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentStep = value;
                  _controller.setStep(value.toInt());
                });
              },
            ),
            Text('Step saat ini: ${_controller.step}', style: const TextStyle(fontSize: 16)),

            const SizedBox(height: 30),

            // Tombol kontrol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Decrement
                ElevatedButton.icon(
                  onPressed: () => setState(() => _controller.decrement()),
                  icon: const Icon(Icons.remove),
                  label: const Text('Kurang'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
                const SizedBox(width: 15),
                
                // Tombol Reset
                ElevatedButton.icon(
                  onPressed: () => setState(() => _controller.reset()),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
                const SizedBox(width: 15),
                
                // Tombol Increment
                ElevatedButton.icon(
                  onPressed: () => setState(() => _controller.increment()),
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
