import 'dart:io';

void main(List<String> arguments) {
  int? number;

  print("Digite um número para saber se é primo");
  number = int.parse(stdin.readLineSync()!);

  bool primo = ehPrimo(number);

  if (primo == true) {
    print("$number é primo.");
  } else {
    print("$number não é primo.");
  }
}

bool ehPrimo(number) {
  bool primo = true;

  if (number == 2) {
    return primo;
  } else {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        primo = false;
        break;
      }
    }
    return primo;
  }
}
