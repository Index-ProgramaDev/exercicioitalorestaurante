import 'package:restaurante/Desconto.dart';

class Taxas {
  final double taxaServico = 0.10;

  double calcularValorComTaxa(Desconto desconto) {
    return desconto.conta * (1 + taxaServico);
  }
}

int calculate() => 42;
