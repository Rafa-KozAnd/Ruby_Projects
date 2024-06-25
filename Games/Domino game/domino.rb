# jogo_de_domino.rb

class JogoDeDomino
    def initialize
      @pecas = criar_pecas_de_domino
      @mesa = []
      @jogadores = []
      distribuir_pecas_iniciais
    end
  
    def criar_pecas_de_domino
      pecas = []
      (0..6).each do |i|
        (i..6).each do |j|
          pecas << [i, j]
        end
      end
      pecas.shuffle
    end
  
    def distribuir_pecas_iniciais
      4.times do
        jogador = []
        7.times { jogador << @pecas.pop }
        @jogadores << jogador
      end
    end
  
    def jogar
      while !fim_de_jogo?
        @jogadores.each_with_index do |jogador, index|
          puts "Jogador #{index + 1}'s turno:"
          jogar_uma_vez(jogador)
          if jogador.empty?
            puts "Jogador #{index + 1} venceu!"
            return
          end
        end
      end
      puts "O jogo terminou em empate."
    end
  
    def jogar_uma_vez(jogador)
      puts "Mesa: #{@mesa}"
      puts "Suas peças: #{jogador}"
      puts "Escolha uma peça para jogar (índice):"
      escolha = gets.chomp.to_i
      peca = jogador[escolha]
      if peca_valida?(peca)
        jogador.delete_at(escolha)
        colocar_peca_na_mesa(peca)
      else
        puts "Peça inválida. Escolha outra."
        jogar_uma_vez(jogador)
      end
    end
  
    def peca_valida?(peca)
      return true if @mesa.empty?
  
      primeira = @mesa.first.first
      ultima = @mesa.last.last
  
      peca.include?(primeira) || peca.include?(ultima)
    end
  
    def colocar_peca_na_mesa(peca)
      if @mesa.empty?
        @mesa << peca
      else
        primeira = @mesa.first.first
        ultima = @mesa.last.last
  
        if peca.include?(primeira)
          if peca.first == primeira
            @mesa.unshift(peca.reverse)
          else
            @mesa.unshift(peca)
          end
        elsif peca.include?(ultima)
          if peca.first == ultima
            @mesa << peca
          else
            @mesa << peca.reverse
          end
        end
      end
    end
  
    def fim_de_jogo?
      @jogadores.any?(&:empty?)
    end
  end
  
  def main
    jogo = JogoDeDomino.new
    jogo.jogar
  end
  
  main if __FILE__ == $0
  