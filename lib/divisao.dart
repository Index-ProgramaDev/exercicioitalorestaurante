import 'package:restaurante/Desconto.dart';

class Parcela {
  final Desconto desconto = Desconto();
  final double juros = 0.20;
  int parcela = 1;

  double valorTotal() => desconto.conta * (1 + juros);

  double valorPorParcela() {
    if (parcela <= 0) {
      return 0;
    }
    return valorTotal() / parcela;
  }
}

int calculate() => 42;
