class Investimento
    attr_accessor :nome, :quantidade, :preco_por_unidade
  
    def initialize(nome, quantidade, preco_por_unidade)
      @nome = nome
      @quantidade = quantidade
      @preco_por_unidade = preco_por_unidade
    end
  
    def valor_total
      @quantidade * @preco_por_unidade
    end
  
    def to_s
      "Investimento: #{@nome}, Quantidade: #{@quantidade}, Preço por Unidade: #{@preco_por_unidade}, Valor Total: #{valor_total}"
    end
  end
  