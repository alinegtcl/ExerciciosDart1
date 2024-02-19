import 'dart:io';

void main(List<String> arguments) {
  int? size;

  print('Digite quantos números você quer digitar para cada lista:');
  size = int.parse(stdin.readLineSync()!);

  List<int> list1 = readList(size, 'primeira');
  List<int> list2 = readList(size, 'segunda');

  List<int> commons = findCommonsElements(list1, list2);

  print('Elementos comuns nas duas listas: $commons');
}

List<int> readList(int size, String listName) {

  List<int> numbers = [];

  for (int i = 0; i < size; i++) {
    stdout.write('Digite o ${i + 1}º número da $listName lista: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  return numbers;
}

List<int> findCommonsElements(list1, list2) {
  List<int> commonNumbers = [];

  for (int number in list1) {
    if (list2.contains(number)) {
      commonNumbers.add(number);
    }
  }

  return commonNumbers;
}
