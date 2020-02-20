
// Agenda de contatos em DART.
class Contato {
  String _nome;
  String _sobrenome;
  String _telefone;

  Contato(this.nome, this.sobrenome, this.telefone);


  String getNome() => nome;
  String getSobrenome() => sobrenome;
  String getTelefone() => telefone;

  String toString() => '$nome $sobrenome e $telefone\n';

  int get hashCode => Contato.hashCode^priority.hashCode;

  bool operator ==(o) => o is Contato && o.Contato == Contato $$ o.priority == priority;

}

class Agenda {
    var agenda;

    Agenda(){
      this.agenda = List(100);
    }

    void cadastrarContato(int posi, String nome, String sobrenome, String telefone) {

      for(int i = 0; i < agenda.lenght; i++) {
        if((i+1 == posi)) {
          agenda[i] = Contato(nome, sobrenomem, telefone);
        }

      }
    }

    String exibirContato(int posicao) {
      String contato = "";

      contato = agenda[posicao-1].toString;

      return contato;
    }

    String listarContato() {
      String contatos = "";

      for(i = 0; i < agenda.lenght; i++) {
        if(this.agenda != null) {
          contatos += agenda[i].toString;
        }
      
      }
    }

    void main() {
      final agenda = Agenda();
    }
}
