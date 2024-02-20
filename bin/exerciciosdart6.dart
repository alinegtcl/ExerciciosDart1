import 'dart:io';

void main(List<String> arguments) {
  Map<String, String> aniversarios = {};

  String nome = "";
  String dataniver = "";

  while (nome != "fim") {
    print("Digite o nome:");
    nome = stdin.readLineSync()!;

    if (nome != "fim") {
      print("Digite o aniversário:");
      dataniver = stdin.readLineSync()!;
      aniversarios[nome] = dataniver;
    }
  }

  print(aniversarios);

  nome = "";
  print("-------------");

  while (nome != "fim") {
    print("Digite um nome para procurar o aniversário:");
    nome = stdin.readLineSync()!;

    if (nome != "fim") {
      String? data = aniversarios[nome];
      if (data == null) {
        print("$nome não está cadastrado!");
      } else {
        print("$nome faz aniversario em $data");
      }
    }
  }
}
