# conversor_de_base_numerica.rb

def decimal_para_binario(numero)
    numero.to_i.to_s(2)
  end
  
  def binario_para_decimal(numero)
    numero.to_i(2).to_s
  end
  
  def decimal_para_hexadecimal(numero)
    numero.to_i.to_s(16)
  end
  
  def hexadecimal_para_decimal(numero)
    numero.to_i(16).to_s
  end
  
  def main
    puts "Conversor de Base Numérica"
    puts "1. Decimal para Binário"
    puts "2. Binário para Decimal"
    puts "3. Decimal para Hexadecimal"
    puts "4. Hexadecimal para Decimal"
    print "Escolha uma opção (1/2/3/4): "
    opcao = gets.chomp.to_i
  
    case opcao
    when 1
      print "Digite um número decimal: "
      numero = gets.chomp.to_i
      resultado = decimal_para_binario(numero)
      puts "Resultado: #{resultado}"
    when 2
      print "Digite um número binário: "
      numero = gets.chomp
      resultado = binario_para_decimal(numero)
      puts "Resultado: #{resultado}"
    when 3
      print "Digite um número decimal: "
      numero = gets.chomp.to_i
      resultado = decimal_para_hexadecimal(numero)
      puts "Resultado: #{resultado}"
    when 4
      print "Digite um número hexadecimal: "
      numero = gets.chomp
      resultado = hexadecimal_para_decimal(numero)
      puts "Resultado: #{resultado}"
    else
      puts "Opção inválida. Encerrando o programa."
    end
  end
  
  main if __FILE__ == $0
  