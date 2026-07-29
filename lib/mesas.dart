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

void main() {
  Mesa mesa = Mesa(numero: 5);

  print("Mesa ${mesa.numero}");
  print("Ocupada: ${mesa.ocupada}");

  mesa.abrir();

  print("Depois de abrir: ${mesa.ocupada}");
}