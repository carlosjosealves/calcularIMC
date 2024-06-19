import 'dart:io';

import 'package:calcula_imc/calcula_imc.dart';

void main(List<String> arguments) {
  stdout.write("Digite seu peso: ");
  double peso = double.parse(stdin.readLineSync()!);
  stdout.write("Digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  double imc = calculaIMC(peso, altura);
  if (imc <= 18) {
    print(
        "O resultado do seu imc é: ${imc.toStringAsFixed(0)} esta abaixo do normal");
  } else if (imc < 26) {
    print(
        "O resultado do seu imc é: ${imc.toStringAsFixed(0)} seu imc esta normal");
  } else if (imc > 26) {
    print(
        "O resultado do seu imc é: ${imc.toStringAsFixed(0)} você esta obeso");
  }
}
