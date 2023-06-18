import 'exception/excecoes.dart';
import './classes/leituras.dart';
import './classes/pessoa.dart';

void imcApp(){
  print("Bem vindo à calculadora de IMC");
  String nome;
  double? altura;
  double? peso;

  nome = Leituras.lerstringComTexto("Digite o nome do paciente:");

  if (nome.trim()==""){
    throw Excecoes();
  }

  altura = Leituras.lerDoubleComTexto("Digite a altura do paciente em metros:");

  while ((altura?.isNegative?? true) || altura == 0.0 || altura! > 3.0){
      altura = Leituras.lerDoubleComTexto("Altura inválida! Digite novamente a altura do paciente em metros:");
   }

  peso = Leituras.lerDoubleComTexto("Digite o peso do paciente em quilos:");

  while (peso?.isNegative?? true ){
      peso = Leituras.lerDoubleComTexto("Peso inválido! Digite novamente o peso do paciente em quilos:");
   }

  var pessoa = Pessoa(nome, peso ?? 0.0, altura ?? 0.0);

  double imc = pessoa.calcularIMC();
  print("O IMC do paciente ${pessoa.getNome()} é: $imc");

  String classificacao = pessoa.reultadoIMC(imc);
  print("A classificação do paciente ${pessoa.getNome()} é: $classificacao");

}