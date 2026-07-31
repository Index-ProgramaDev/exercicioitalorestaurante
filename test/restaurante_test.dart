import 'package:restaurante/Desconto.dart';
import 'package:test/test.dart';
import 'package:restaurante/clientes.dart';
import 'package:restaurante/pedidos.dart';
import 'package:restaurante/mesas.dart';
import 'package:restaurante/produtos.dart';

void main() {
  group('Desconto', () {
    test('Aplicar os descontos', () {
      final desconto = Desconto()
        ..conta = 100.00
        ..taxa = 0.10
        ..aniversario = true;

      expect(desconto.aplicarDesconto(), 90.0);
    });

    test('nao aplicar desconto', () {
      final desconto = Desconto()
        ..conta = 100.00
        ..taxa = 0.10
        ..aniversario = false;

      expect(desconto.aplicarDesconto(), 100.0);
    });
  });

  // testar clientes

  group('cliente', () {
    test('testar se ta armazenando os clientwe', () {
      final cliente = Cliente(id: 1, nome: 'joao', telefone: '9999999');

      expect(cliente.id, 1);
      expect(cliente.nome, 'joao');
      expect(cliente.telefone, '9999999');
    });
  });

// Verificar os pedidos

group('Pedido', () {
  test('deve calcular o subtotal', () {
    final pedido = Pedido(
      cliente: Cliente(id: 1, nome: 'joao', telefone: '9999999',),
      mesa: Mesa(numero: 23),);

    pedido.adicionarProduto(
      Produto( id: 1, nome: 'Pizza', preco: 50,),);

    pedido.adicionarProduto(
      Produto( id: 2, nome: 'Refrigerante', preco: 10,),);

    expect(pedido.subtotal(), 60);
  });
});

}
