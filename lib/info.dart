// ignore_for_file: prefer_final_fields, unused_field, non_constant_identifier_names

class info{
  String nome = " ";
  String email = " ";
  String curso = " ";
  bool permitir = false;
  List<String> listaInteresse = [];

  get getNome => this.nome;

 set setNome( nome) => this.nome = nome;

  get getEmail => this.email;

 set setEmail( email) => this.email = email;

  get getCurso => this.curso;

 set setCurso( curso) => this.curso = curso;

  get getPermitir => this.permitir;

 set setPermitir( permitir) => this.permitir = permitir;
 

  info(this.nome, this.email, this.curso, this.listaInteresse, this.permitir);


List<String> get getListaInteresse => this.listaInteresse;

 set setListaInteresse(List<String> listaInteresse) => this.listaInteresse = listaInteresse;
}