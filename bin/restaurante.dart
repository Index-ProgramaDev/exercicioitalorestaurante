import 'package:restaurante/cardapios.dart';
import 'package:restaurante/clientes.dart';
import 'package:restaurante/Desconto.dart';
import 'package:restaurante/divisao.dart';
import 'package:restaurante/taxa.dart';
import 'package:restaurante/fechamento.dart';
import 'package:restaurante/mesas.dart';
import 'package:restaurante/produtos.dart';
import 'package:restaurante/pedidos.dart';

void main() {
  final cardapios = Cardapios();
  cardapios.adicionarItens(['Cerveja', 'Suco', 'Água']);

  final desconto = Desconto()
    ..conta = 100.0
    ..taxa = 0.10
    ..aniversario = true;

  final parcela = Parcela()
    ..desconto.conta = 100.0
    ..parcela = 2;

  final taxas = Taxas();
  final fechamento = Fechamento();

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

  print('Cardápio: ${cardapios.cardapioPadrao}');
  print('Desconto: R\$ ${desconto.aplicarDesconto()}');
  print('Valor por parcela: R\$ ${parcela.valorPorParcela()}');
  print('Conta com taxa: R\$ ${taxas.calcularValorComTaxa(desconto)}');
  print('Pagamento finalizado: ${fechamento.finalizarPagamento(pago: true)}');
  print('Cliente: ${cliente.nome}');
  print('Mesa: ${mesa.numero}');
  print('Subtotal: R\$ ${pedido.subtotal()}');
  print('Total: R\$ ${pedido.total()}');
}
