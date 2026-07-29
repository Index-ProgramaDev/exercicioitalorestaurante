import '../lib/clientes.dart';
import '../lib/produtos.dart';
import '../lib/mesas.dart';
import '../lib/pedidos.dart';

void main() {
  Cliente cliente = Cliente(
    id: 1,
    nome: "João",
    telefone: "(11) 99999-9999",
  );

  Mesa mesa = Mesa(numero: 5);
  mesa.abrir();

  Produto pizza = Produto(
    id: 1,
    nome: "Pizza Calabresa",
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

  print("Cliente: ${cliente.nome}");
  print("Mesa: ${mesa.numero}");
  print("Itens do pedido:");

  for (var produto in pedido.produtos) {
    print("- ${produto.nome} - R\$ ${produto.preco}");
  }

  print("Subtotal: R\$ ${pedido.subtotal()}");
}