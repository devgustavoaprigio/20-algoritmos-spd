=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave
  def initialize(button_input)
    @button_input = button_input
  end

  def timer
    if @button_input < 100
      # Menos de 100, tratamos como segundos normais
      minutes = @button_input / 60
      seconds = @button_input % 60
    else
      # Acima de 100, devemos tratar os dois últimos dígitos como segundos
      minutes = @button_input / 100
      seconds = @button_input % 100
      
      # Se os segundos forem maiores que 59, ajustar minutos e segundos
      if seconds >= 60
        minutes += seconds / 60
        seconds = seconds % 60
      end
    end
    
    format("%02d:%02d", minutes, seconds)
  end
end

# Teste
microwave = Microwave.new(100)
puts microwave.timer  # Deve retornar "01:00"
