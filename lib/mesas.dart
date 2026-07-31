class Mesa {
  int numero;
  bool ocupada;

  Mesa({
    required this.numero,
    this.ocupada = false,
  });

  void abrir() {
    ocupada = true;
  }
}

int calculate() => 42;