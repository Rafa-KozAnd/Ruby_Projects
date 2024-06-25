def carregar_palavras_proibidas
    # Lista de palavras proibidas
    ["palavra1", "palavra2", "palavra3"]
  end
  
  def verificar_palavras_proibidas(texto, palavras_proibidas)
    palavras_encontradas = []
    palavras_texto = texto.downcase.split
  
    palavras_proibidas.each do |palavra_proibida|
      if palavras_texto.include?(palavra_proibida)
        palavras_encontradas << palavra_proibida
      end
    end
  
    palavras_encontradas
  end
  
  def main
    puts "Verificador de Palavras Proibidas"
    puts "Digite um texto para verificação:"
    texto = gets.chomp
  
    palavras_proibidas = carregar_palavras_proibidas
    palavras_encontradas = verificar_palavras_proibidas(texto, palavras_proibidas)
  
    if palavras_encontradas.any?
      puts "Palavras proibidas encontradas: #{palavras_encontradas.join(', ')}"
    else
      puts "Nenhuma palavra proibida encontrada."
    end
  end
  
  main if __FILE__ == $0
  