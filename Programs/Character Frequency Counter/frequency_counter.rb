def contar_frequencia_de_caracteres(texto)
    frequencia = Hash.new(0)
    texto.each_char { |char| frequencia[char] += 1 }
    frequencia
  end
  
  def main
    puts "Contador de Frequência de Caracteres"
    puts "Digite um texto para análise:"
    texto = gets.chomp
  
    frequencia = contar_frequencia_de_caracteres(texto)
  
    puts "Frequência de Caracteres:"
    frequencia.each do |char, count|
      puts "#{char}: #{count}"
    end
  end
  
  main if __FILE__ == $0
  