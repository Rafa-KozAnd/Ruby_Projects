# Criando a carteira de investimentos
carteira = Carteira.new

# Adicionando investimentos
investimento1 = Investimento.new("Ação XYZ", 10, 15.0)
investimento2 = Investimento.new("Ação ABC", 5, 30.0)
investimento3 = Investimento.new("Fundo Imobiliário DEF", 20, 100.0)
carteira.adicionar_investimento(investimento1)
carteira.adicionar_investimento(investimento2)
carteira.adicionar_investimento(investimento3)

# Listando investimentos
puts "Investimentos na carteira:"
carteira.listar_investimentos
puts

# Valor total da carteira
puts "Valor total da carteira: #{carteira.valor_total_carteira}"
