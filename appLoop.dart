import 'dart:io';

main() {
  bool condition = true;

  while (condition) {
    print("Escreva um texto");
    String text = stdin.readLineSync().toString();
    if (text == "sair") {
      condition = false;
      print("Programa Finalizado");
    } else {
      print('Voce digitou: $text');
    }
  }
}
