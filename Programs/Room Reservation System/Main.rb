# Criando o sistema de reserva
sistema = SistemaDeReserva.new

# Adicionando salas
sala1 = Sala.new("Sala A", 20)
sala2 = Sala.new("Sala B", 15)
sistema.adicionar_sala(sala1)
sistema.adicionar_sala(sala2)

# Listando salas
puts "Salas disponíveis:"
sistema.listar_salas
puts

# Fazendo reservas
sistema.fazer_reserva(sala1, "2024-06-22", "10:00", "12:00", "João")
sistema.fazer_reserva(sala1, "2024-06-22", "11:00", "13:00", "Maria")  # Deve dar erro de conflito
sistema.fazer_reserva(sala2, "2024-06-22", "10:00", "12:00", "Pedro")

# Listando reservas
puts "\nReservas feitas:"
sistema.listar_reservas
