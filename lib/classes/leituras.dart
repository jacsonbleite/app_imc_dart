import 'dart:convert';
import 'dart:io';

class Leituras{
  
  static String lerstringComTexto(String texto){
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
 
  static String lerString(){
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble(){
    var value = lerString();
    try{
      return double.parse(value);
    } catch(e){
      return null;
    }
  }
    
  static double? lerDoubleComTexto(String texto){
    print(texto);
    return lerDouble();
  }


}