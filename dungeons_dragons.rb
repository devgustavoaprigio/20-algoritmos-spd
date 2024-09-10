
=begin
personagens
habilidade = força, destreza, constituição, inteligência, sabedoria e carisma = pontuacao aleatoria (randomico)

  4 dados = o dado tem de 6 lados

  quando joga o dado descarta o numero menor

  jogar os dados 6x -> uma para cada habilidade (4 dados)

  vida dos personagens = 10 pontos ((10 pontos - habalidades) dividido por 2 arredondando para baixo)


Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  BASE_HITPOINTS = 10

  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def self.roll_dice
    Array.new(4) { rand(1..6) }
  end

  def self.sum_of_largest_three(dice)
    dice.sort.reverse.take(3).sum
  end

  def self.ability_score
    sum_of_largest_three(roll_dice)
  end

  def self.modifier(ability_score)
    (ability_score - 10) / 2
  end

  def initialize
    @strength = self.class.ability_score
    @dexterity = self.class.ability_score
    @constitution = self.class.ability_score
    @intelligence = self.class.ability_score
    @wisdom = self.class.ability_score
    @charisma = self.class.ability_score

    @hitpoints = BASE_HITPOINTS + self.class.modifier(@constitution)
  end

  def to_s
    "Strength: #{@strength}\n" \
    "Dexterity: #{@dexterity}\n" \
    "Constitution: #{@constitution}\n" \
    "Intelligence: #{@intelligence}\n" \
    "Wisdom: #{@wisdom}\n" \
    "Charisma: #{@charisma}\n" \
    "Hitpoints: #{@hitpoints}"
  end
end

# Criar um novo personagem e exibir suas estatísticas
character = DndCharacter.new
puts character
