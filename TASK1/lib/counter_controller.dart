class CounterController {
  int _counter = 0; // Variabel private (Enkapsulasi)
  int _step = 1;

  int get value => _counter; // Getter untuk akses data
  int get step => _step; // Getter untuk step

  void setStep(int newStep) {
    if (newStep > 0) {
      _step = newStep;
    }
  }

  void increment() => _counter += _step;

  void decrement() => _counter -= _step; // Membolehkan nilai negatif

  void reset() => _counter = 0;
}
