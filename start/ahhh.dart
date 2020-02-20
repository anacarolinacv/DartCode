String quantidade(int tamanho) => "A${'a' * tamanho}h!";

void main(){

  final valores = [1, 2, 3, 4, 30];

  for(var quantidade in valores) {
    print(quantidade(tamanho));
  }