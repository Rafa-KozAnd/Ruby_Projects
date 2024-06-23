class Reserva
    attr_accessor :sala, :data, :horario_inicio, :horario_fim, :responsavel
  
    def initialize(sala, data, horario_inicio, horario_fim, responsavel)
      @sala = sala
      @data = data
      @horario_inicio = horario_inicio
      @horario_fim = horario_fim
      @responsavel = responsavel
    end
  
    def to_s
      "Reserva: #{@sala.nome}, Data: #{@data}, Início: #{@horario_inicio}, Fim: #{@horario_fim}, Responsável: #{@responsavel}"
    end
  end
  