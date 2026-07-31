import 'package:restaurante/clientes.dart';
import 'package:restaurante/produtos.dart';
import 'package:restaurante/mesas.dart';
import 'package:restaurante/pedidos.dart';

void main() {
  final cliente = Cliente(
    id: 1,
    nome: 'João',
    telefone: '(11) 99999-9999',
  );

  final mesa = Mesa(numero: 5)..abrir();

  final pizza = Produto(
    id: 1,
    nome: 'Pizza Calabresa',
    preco: 50.0,
  );

  final refrigerante = Produto(
    id: 2,
    nome: 'Refrigerante',
    preco: 8.0,
  );

  final pedido = Pedido(
    cliente: cliente,
    mesa: mesa,
  )
    ..adicionarProduto(pizza)
    ..adicionarProduto(refrigerante);

  print('Cliente: ${cliente.nome}');
  print('Mesa: ${mesa.numero}');
  print('Itens do pedido:');

  for (final produto in pedido.produtos) {
    print('- ${produto.nome} - R\$ ${produto.preco}');
  }

  print('Subtotal: R\$ ${pedido.subtotal()}');
  print('Total: R\$ ${pedido.total()}');
}