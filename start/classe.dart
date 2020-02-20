// aprendendo dart (inicio)

class Animal {
  int patas;
  int idade;
  int validacao;
  final String _tipo;

  Animal(int patas = 4, int idade = 2, String tipo = ) {
    this.raca = raca;
    this.idade = idade;
    this.tipo = _tipo;
    this.validacao = 0;
  
  }

  void adicionaIdade(int ano) {
    idade += ano;
  } 

  void acrescentaValidacao(int valida) {
    validacao += valida;
  }
  void decrescentaValidacao(int valida) {
    validacao -= valida;
  }

  String get tipo => _tipo;
  
  String toString() => 'Animal com $patas patas e $idade de idade.';

}
void main() {

  var animal1 = Animal(4, 2);
  print(animal1);

}