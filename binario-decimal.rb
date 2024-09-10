class EliudsEgg
  def self.egg_count(decimal_number)
    count = 0
    while decimal_number > 0
      #verifica o bit menos significativo
      count += 1 if decimal_number & 1 == 1
      #desloca os bits para direita
      decimal_number >>= 1
    end
    count 
  end
end

