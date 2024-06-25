# calculadora_de_notas_finais.rb

def calcular_media_ponderada(notas, pesos)
    total_pesos = pesos.reduce(:+)
    soma_ponderada = notas.zip(pesos).map { |nota, peso| nota * peso }.reduce(:+)
    media_ponderada = soma_ponderada.to_f / total_pesos
    media_ponderada
  end
  
  def obter_notas_e_pesos
    notas = []
    pesos = []
  
    loop do
      puts "Digite a nota (ou 'sair' para terminar):"
      input = gets.chomp
      break if input.downcase == 'sair'
      
      nota = input.to_f
  
      puts "Digite o peso para a nota:"
      peso = gets.chomp.to_f
  
      notas << nota
      pesos << peso
    end
  
    [notas, pesos]
  end
  
  def main
    puts "Calculadora de Notas Finais"
  
    notas, pesos = obter_notas_e_pesos
    media_final = calcular_media_ponderada(notas, pesos)
  
    puts "A média final ponderada é: #{media_final.round(2)}"
  end
  
  main if __FILE__ == $0
  