class Sala
    attr_accessor :nome, :capacidade
  
    def initialize(nome, capacidade)
      @nome = nome
      @capacidade = capacidade
    end
  
    def to_s
      "Sala: #{@nome}, Capacidade: #{@capacidade}"
    end
  end
  