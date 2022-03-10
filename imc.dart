import 'dart:io';

main() {
  inputsImc();
}

inputsImc() {
  print("Digite seu peso");
  String inputPeso = stdin.readLineSync().toString();
  int peso = int.parse(inputPeso);

  print("Digite sua altura");
  String inputAltura = stdin.readLineSync().toString();
  double altura = double.parse(inputAltura);

  double imc = calculaImc(peso, altura);

  print('Seu IMC é: $imc');
  divisoesImc(imc);
}

double calculaImc(int peso, double altura) {
  return peso / (altura * altura);
}

divisoesImc(double imc) {
  if (imc <= 18.5) {
    print('Você está abaixo do peso');
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('Você está com o peso normal parabéns');
  } else if (imc >= 25 && imc <= 29.9) {
    print('Você está com sobrepeso');
  } else if (imc >= 30 && imc <= 34.9) {
    print('Você está com obesidade grau I');
  } else if (imc >= 35 && imc <= 39.9) {
    print('Você está com obesidade grau II');
  } else {
    print("Você está com obesidade grau III");
  }
}
