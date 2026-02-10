class CounterController {
  int _counter = 0; // Variabel private (Enkapsulasi)
  int _step = 1;
  double _currentStep = 1.0; // State untuk slider

  int get value => _counter; // Getter untuk akses data
  int get step => _step; // Getter untuk step
  double get currentStep => _currentStep; // Getter untuk current step slider

  void setStep(int newStep) {
    if (newStep > 0) {
      _step = newStep;
    }
  }

  void setCurrentStep(double value) {
    _currentStep = value;
    setStep(value.toInt());
  }

  void increment() => _counter += _step;

  void decrement() => _counter -= _step;

  void reset() => _counter = 0;
}
