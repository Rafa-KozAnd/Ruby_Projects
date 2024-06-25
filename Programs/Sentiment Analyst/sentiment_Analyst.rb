require 'sentimental'

# Inicializar o analisador de sentimentos
Sentimental.load_defaults
analyzer = Sentimental.new

def analisar_sentimento(texto, analyzer)
  # Analisar o sentimento do texto
  score = analyzer.score(texto)
  sentimento = analyzer.sentiment(texto)
  
  { score: score, sentimento: sentimento }
end

def main
  puts "Analista de Sentimentos"
  puts "Digite um texto para análise:"
  texto = gets.chomp

  resultado = analisar_sentimento(texto, analyzer)

  puts "Pontuação do Sentimento: #{resultado[:score]}"
  puts "Sentimento: #{resultado[:sentimento].capitalize}"
end

main if __FILE__ == $0
