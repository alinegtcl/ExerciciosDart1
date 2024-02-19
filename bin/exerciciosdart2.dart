import 'dart:io';

void main(List<String> arguments) {
  String? number;
  int result;

  print("Digite um número:");
  number = stdin.readLineSync();

  try {
    result = int.parse(number!);
    if(result % 2 == 0){
      print("O número $number é par");
    } else {
      print("O número $number é ímpar");

    }
  } catch(e) {
    print("Não é um número! Reinicie o exercício");
  }

}
