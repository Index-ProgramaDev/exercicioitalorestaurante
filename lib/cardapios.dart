class Cardapios {
  final List<String> cardapioPadrao = [
    'Pizza',
    'Hamburguer',
    'Sushi',
    'Salada',
    'Lasanha',
  ];

  void adicionarItens(List<String> itens) {
    cardapioPadrao.addAll(itens);
  }

  int totalItens() => cardapioPadrao.length;
}

int calculate() => 42;
