class Desconto {
  double conta = 0.0;
  double taxa = 0.0;
  bool aniversario = false;

  double aplicarDesconto() {
    if (aniversario) {
      return conta * (1 - taxa);
    }
    return conta;
  }
}

int calculate() => 42;
