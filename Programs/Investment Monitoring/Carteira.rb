class Carteira
    def initialize
      @investimentos = []
    end
  
    def adicionar_investimento(investimento)
      @investimentos << investimento
    end
  
    def listar_investimentos
      @investimentos.each { |investimento| puts investimento }
    end
  
    def valor_total_carteira
      @investimentos.reduce(0) { |total, investimento| total + investimento.valor_total }
    end
  end
  