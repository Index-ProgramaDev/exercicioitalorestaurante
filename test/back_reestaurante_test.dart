import 'package:restaurante/mesas.dart';
import 'package:test/test.dart';

void main() {
  test('Mesa deve abrir corretamente', () {
    final mesa = Mesa(numero: 3);
    mesa.abrir();

    expect(mesa.ocupada, isTrue);
    expect(mesa.numero, 3);
  });
}
