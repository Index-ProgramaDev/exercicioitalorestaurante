class Produto {
  int id;
  String nome;
  double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
  });
}

void main() {
  Produto produto = Produto(
    id: 1,
    nome: "Pizza",
    preco: 50.0,
  );

  print("Produto: ${produto.nome}");
  print("Preço: R\$ ${produto.preco}");
}