class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40 
  actual_minutes_in_oven = 30 
  preparation_time_in_minutes = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
   end

   preparation_time_in_minutes(layers)
    EXPECTED_MINUTES_IN_OVEN / preparation_time_in_minutes 
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
end







class Lasagna
  # 1. Define a constante com o tempo esperado no forno
  EXPECTED_MINUTES_IN_OVEN = 40

  # 2. Calcula o tempo restante no forno
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  # 3. Calcula o tempo de preparação em minutos
  def preparation_time_in_minutes(number_of_layers)
    number_of_layers * 2
  end

  # 4. Calcula o tempo total de trabalho em minutos
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end
