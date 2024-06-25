# scraper.rb

require 'nokogiri'
require 'open-uri'

def scrape_site(url)
  begin
    # Abrir a URL e ler o conteúdo
    html = URI.open(url)

    # Parsear o HTML usando Nokogiri
    doc = Nokogiri::HTML(html)

    # Selecionar os títulos dos artigos (assumindo que eles estão dentro de <h2> tags com a classe 'title')
    titles = doc.css('h2.title')

    # Exibir os títulos
    titles.each_with_index do |title, index|
      puts "#{index + 1}. #{title.text.strip}"
    end
  rescue OpenURI::HTTPError => e
    puts "Erro ao acessar a URL: #{e.message}"
  rescue StandardError => e
    puts "Ocorreu um erro: #{e.message}"
  end
end

# URL do site que você quer scrape
url = "https://example.com/news"

# Chamar a função para scrape o site
scrape_site(url)
