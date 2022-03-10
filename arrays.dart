import 'dart:io';

void main() {
  var nome = [''];

  bool condition = true;

  while (condition) {
    print('Digite seu nome');
    String texto = stdin.readLineSync().toString();
    if (texto == 'sair') {
      print('Programa finalizado');
      condition = false;
    } else {
      nome.add(texto);
    }
    print(nome);
    print('\n');
  }
}
