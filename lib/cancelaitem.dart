import 'clientes.dart';
import 'mesas.dart';
import 'produtos.dart';
import 'pedidos.dart';

void main() {
  Cliente cliente = Cliente(
    id: 1,
    nome: "João",
    telefone: "11999999999",
  );

  Mesa mesa = Mesa(numero: 1);

  Produto pizza = Produto(
    id: 1,
    nome: "Pizza",
    preco: 50.0,
  );

  Produto refrigerante = Produto(
    id: 2,
    nome: "Refrigerante",
    preco: 8.0,
  );

  Pedido pedido = Pedido(
    cliente: cliente,
    mesa: mesa,
  );

  pedido.adicionarProduto(pizza);
  pedido.adicionarProduto(refrigerante);

  print("Antes de cancelar:");
  for (var produto in pedido.produtos) {
    print(produto.nome);
  }

  pedido.removerProduto(refrigerante);

  print("\nDepois de cancelar:");
  for (var produto in pedido.produtos) {
    print(produto.nome);
  }
}