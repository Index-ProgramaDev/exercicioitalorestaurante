import 'package:restaurante/clientes.dart';
import 'package:restaurante/produtos.dart';
import 'package:restaurante/mesas.dart';

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
    return produtos.fold(0.0, (soma, p) => soma + p.preco);
  }

  double total() {
    double valor = subtotal();
    valor -= desconto;
    valor += valor * taxaServico;
    return valor;
  }
}

int calculate() => 42;