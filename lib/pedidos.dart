import 'clientes.dart';
import 'produtos.dart';
import 'mesas.dart';

class Pedido {
  Cliente cliente;
  Mesa mesa;
  List<Produto> produtos = [];

  double desconto = 0;
  double taxaServico = 0.10;

  Pedido({
    required this.cliente,
    required this.mesa,
  });

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
  }

  void removerProduto(Produto produto) {
    produtos.remove(produto);
  }

  double subtotal() {
    return produtos.fold(0, (soma, p) => soma + p.preco);
  }

  double total() {
    double valor = subtotal();

    valor -= desconto;
    valor += valor * taxaServico;

    return valor;
  }
}