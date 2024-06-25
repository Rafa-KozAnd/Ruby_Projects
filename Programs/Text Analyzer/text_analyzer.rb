# analisador_de_texto.rb

def word_count(text)
    words = text.split
    words.count
  end
  
  def character_count(text)
    total_characters = text.length
    characters_without_spaces = text.gsub(/\s+/, '').length
    { total: total_characters, without_spaces: characters_without_spaces }
  end
  
  def word_frequency(text)
    words = text.downcase.split
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    frequency
  end
  
  def letter_frequency(text)
    letters = text.downcase.gsub(/[^a-z]/, '').chars
    frequency = Hash.new(0)
    letters.each { |letter| frequency[letter] += 1 }
    frequency
  end
  
  def analyze_text(text)
    word_count_result = word_count(text)
    character_count_result = character_count(text)
    word_frequency_result = word_frequency(text)
    letter_frequency_result = letter_frequency(text)
  
    {
      word_count: word_count_result,
      character_count: character_count_result,
      word_frequency: word_frequency_result,
      letter_frequency: letter_frequency_result
    }
  end
  
  # Exemplo de uso
  text = "Este é um exemplo simples de um analisador de texto. Ele conta palavras, caracteres e frequência de palavras e letras."
  
  analysis_result = analyze_text(text)
  
  puts "Contagem de Palavras: #{analysis_result[:word_count]}"
  puts "Contagem de Caracteres: Total = #{analysis_result[:character_count][:total]}, Sem Espaços = #{analysis_result[:character_count][:without_spaces]}"
  puts "Frequência de Palavras: #{analysis_result[:word_frequency]}"
  puts "Frequência de Letras: #{analysis_result[:letter_frequency]}"
  