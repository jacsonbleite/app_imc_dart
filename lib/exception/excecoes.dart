class Excecoes implements Exception{
  String error() => "Nome inválido";

  @override
  String toString(){
    return "excecoes: ${error()}";
  }
}