import 'package:exerciciosdart1/exerciciosdart1.dart' as exerciciosdart1;
import 'dart:io';

void main(List<String> arguments) {
  String? name;
  String? age;
  int result;

  print("Digite seu nome:");
  name = stdin.readLineSync();

  print("Digite sua idade:");
  age = stdin.readLineSync();

  try {
    result = 100 - int.parse(age!);
    print("${name!}, faltam $result anos para você chegar aos 100 anos!");
  } catch(e) {
    print("Não é um número! Reinicie o exercício");
  }

}
