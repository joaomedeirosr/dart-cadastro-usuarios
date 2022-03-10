import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");

  while (condicao) {
    print(
        "Olá Bem vindo ao gerenciador de cadastros \n Comandos Diponivéis : sair , cadastrar , verificar cadastro");
    String texto = stdin.readLineSync().toString();
    if (texto == "sair") {
      print("Você saiu do gerenciador de cadastros");
      condicao = false;
    } else if (texto == "cadastrar") {
      print("\x1B[2J\x1B[0;0H");
      novoCadastro();
    } else if (texto == "verificar cadastro") {
      print(cadastros);
    } else {
      print("O comandod digitado nao existe");
    }
  }
}

novoCadastro() {
  Map<String, dynamic> cadastro = {};
  print('Digite seu nome por favor');
  cadastro["nome"] = stdin.readLineSync().toString();
  print('Digite sua idade');
  cadastro["idade"] = stdin.readLineSync().toString();
  print('Digite seu peso');
  cadastro["peso"] = stdin.readLineSync().toString();
  print('Digite sua cidade');
  cadastro["cidade"] = stdin.readLineSync().toString();
  cadastros.add(cadastro);
}
