class Reverser
  def self.reverse(word)
    word.reverse
  end
end

reversed_string = Reverser.reverse("Hello World")
puts reversed_string