class Cliente {
  int id;
  String nome;
  String telefone;

  Cliente({
    required this.id,
    required this.nome,
    required this.telefone,
  });
}

void main() {
  Cliente cliente = Cliente(
    id: 1,
    nome: "João",
    telefone: "99999-9999",
  );

  print(cliente.nome);
}