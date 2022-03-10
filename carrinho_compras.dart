import 'dart:io';

/*Tornando a Variavel String produtos uma variavél global
 Ou seja quando Variavel for Global minha variavel pode ser acessada nao só mais no escopo
 onde foi definida , mas sim em qualquer escopo.*/
List<String> produtos = [];
main() {
  bool condicao = true;

  while (condicao) {
    print("Adicione um produto ao seu carrinho");
    String text = stdin.readLineSync().toString();
    if (text == "sair") {
      print("Compra Concluída");
      condicao = false;
    } else if (text == "status carrinho") {
      imprimir();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text);
      //Comando para limpar o terminal
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

// Modularizacao do Projeto
// funcao imprimir retorna a List produtos e todos os produtos adicionados
imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print(" Item $i: - ${produtos[i]}");
  }
}

// Modularizacao do Projeto
// funcao remover remove um item da List produtos
remover() {
  print("Qual item você deseja remover do carrinho ?");
  imprimir();
  int item = int.parse(stdin.readLineSync().toString());
  produtos.removeAt(item);
  print("O Item removido do seu carrinho com sucesso!");
}
