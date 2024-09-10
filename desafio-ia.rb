
class Character
  def initialize
    @strength = roll_dice
    @dexterity = roll_dice
    @constitution = roll_dice
    @intelligence = roll_dice
    @wisdom = roll_dice
    @charisma = roll_dice
  end

  def roll_dice
    dice = Array.new(4) { rand(1..6) }
    dice_sorted = dice.sort
    sum_of_largest_three = dice_sorted.last(3).sum
    sum_of_largest_three
  end

  def constitution_modifier
    (@constitution - 10) / 2
  end

  def hitpoints
    10 + constitution_modifier
  end

  def to_s
    "Strength: #{@strength}\n" +
    "Dexterity: #{@dexterity}\n" +
    "Constitution: #{@constitution}\n" +
    "Intelligence: #{@intelligence}\n" +
    "Wisdom: #{@wisdom}\n" +
    "Charisma: #{@charisma}\n" +
    "Hitpoints: #{hitpoints}"
  end
end
