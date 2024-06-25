# jogo_sopa_de_letras.rb

class JogoSopaDeLetras
    def initialize(dimensao)
      @dimensao = dimensao
      @grade = gerar_grade_aleatoria
    end
  
    def gerar_grade_aleatoria
      letras = ('A'..'Z').to_a
      grade = Array.new(@dimensao) { Array.new(@dimensao) { letras.sample } }
      grade
    end
  
    def exibir_grade
      puts "Sopa de Letras:"
      @grade.each { |linha| puts linha.join(' ') }
      puts ""
    end
  
    def encontrar_palavras(palavras)
      palavras_encontradas = []
  
      palavras.each do |palavra|
        if encontrar_palavra_horizontal(palavra) || encontrar_palavra_vertical(palavra)
          palavras_encontradas << palavra
        end
      end
  
      palavras_encontradas
    end
  
    def encontrar_palavra_horizontal(palavra)
      @grade.each do |linha|
        line = linha.join('')
        return true if line.include?(palavra)
      end
      false
    end
  
    def encontrar_palavra_vertical(palavra)
      @grade.transpose.each do |coluna|
        column = coluna.join('')
        return true if column.include?(palavra)
      end
      false
    end
  end
  
  def main
    jogo = JogoSopaDeLetras.new(8)  # Dimensão da grade é 8x8
  
    jogo.exibir_grade
  
    palavras = ["JAVA", "RUBY", "PYTHON", "C", "HTML", "CSS", "JAVASCRIPT"]
  
    palavras_encontradas = jogo.encontrar_palavras(palavras)
  
    if palavras_encontradas.empty?
      puts "Nenhuma palavra encontrada na sopa de letras."
    else
      puts "Palavras encontradas na sopa de letras: #{palavras_encontradas.join(', ')}"
    end
  end
  
  main if __FILE__ == $0
  