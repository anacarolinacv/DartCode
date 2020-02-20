import 'dart:math';


abstract class Animal {
  num get idade;
}

class Cachorro implements Animal {
  final num filhos;

  Cachorro(this.filhos);

  void probAdocao() {
    if(this.filhos > 2) {
      num get area => filhos * 4;
      print("Probabilidade baixa");
    } else {
      num get area => filhos * 2;
      print("Probabilidade alta");
    }
  }

  String toString() => 'Cachorro com $filhos filhos';
}

class Gato implements Animal {
  final num filhos;

  Gato(this.filhos);

  void probAdocao() {
    if(this.filhos > 4) {
      num get area => filhos * 2;
      print("Probabilidade baixa");
    } else {
      num get area => filhos * 1;
      print("Probabilidade alta");
    }
  }

  String toString() => 'Gato com $filhos filhos';
}

class Jacare implements Animal {
  final num filhos;
  String local;

  Gato(this.filhos, this.local);

  void probAdocao() {
    if(this.filhos > 4) {
      num get area => filhos * 10;
      print("Probabilidade baixa");
    } else {
      num get area => filhos * 15;
      print("Probabilidade alta");
    }
  }

  String toString() => 'Jacare com $filhos filhos e mora em $lugar';
}

Animal definirSubtipo(String tipo) {
  if(tipo == 'gato') return Gato(5);
  if(tipo == 'cachorro') return Cachorro(2);
  if(tipo == 'jacare') return Jacare(4, "Amazonia");
  throw 'Cant create $tipo';
}



void main() {
    final cachorro1 = definirSubtipo('cachorro');
    final gato1 = definirSubtipo('gato');
    final jacare1 = definirSubtipo('jacare');

    print(cachorro1.area);
    print(gato1.area);
    print(jacare1.area);
}


