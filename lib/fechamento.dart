class Fechamento {
  bool pagamentoRealizado = false;

  bool finalizarPagamento({required bool pago}) {
    pagamentoRealizado = pago;
    return pagamentoRealizado;
  }
}

int calculate() => 42;