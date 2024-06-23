class SistemaDeReserva
    def initialize
      @salas = []
      @reservas = []
    end
  
    def adicionar_sala(sala)
      @salas << sala
    end
  
    def listar_salas
      @salas.each { |sala| puts sala }
    end
  
    def fazer_reserva(sala, data, horario_inicio, horario_fim, responsavel)
      reserva = Reserva.new(sala, data, horario_inicio, horario_fim, responsavel)
      if reserva_valida?(reserva)
        @reservas << reserva
        puts "Reserva feita com sucesso!"
      else
        puts "Erro: Conflito de horários."
      end
    end
  
    def listar_reservas
      @reservas.each { |reserva| puts reserva }
    end
  
    private
  
    def reserva_valida?(nova_reserva)
      @reservas.each do |reserva|
        if reserva.sala == nova_reserva.sala && reserva.data == nova_reserva.data
          if (nova_reserva.horario_inicio < reserva.horario_fim && nova_reserva.horario_fim > reserva.horario_inicio)
            return false
          end
        end
      end
      true
    end
  end
  