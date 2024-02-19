import 'dart:io';

void main(List<String> arguments) {
  int? size;
  List<int> numbers = [];

  print("Digite a quantidade de números que quer inserir:");
  size = int.tryParse(stdin.readLineSync()!);

  if (size != null) {
    for (int i = 0; i < size; i++) {
      print('Digite o ${i + 1}º número: ');
      int number = int.parse(stdin.readLineSync()!);
      numbers.add(number);
    }

    print(
        'Números menores que 5: ${numbers.where((number) => number < 5).toList()}');
  } else {
    print("Não é um número! Reinicie o exercício");
  }
}
