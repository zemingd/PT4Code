class Dice

  def initialize(surfaces)
    @surfaces = surfaces.dup 
  end

  def top
    @surfaces[0]
  end

  def front
    @surfaces[1]
  end

  def right
    @surfaces[2]
  end

  def N
    tmp = @surfaces[0]
    @surfaces[0] = @surfaces[1]
    @surfaces[1] = @surfaces[5]
    @surfaces[5] = @surfaces[4]
    @surfaces[4] = tmp
    self
  end

  def E
    tmp = @surfaces[0]
    @surfaces[0] = @surfaces[3]
    @surfaces[3] = @surfaces[5]
    @surfaces[5] = @surfaces[2]
    @surfaces[2] = tmp
    self
  end

  def S
    tmp = @surfaces[0]
    @surfaces[0] = @surfaces[4]
    @surfaces[4] = @surfaces[5]
    @surfaces[5] = @surfaces[1]
    @surfaces[1] = tmp
    self
  end

  def W
    tmp = @surfaces[0]
    @surfaces[0] = @surfaces[2]
    @surfaces[2] = @surfaces[5]
    @surfaces[5] = @surfaces[3]
    @surfaces[3] = tmp
    self
  end

  def adjust_front(front)
    return unless has_value?(front)

    4.times do
      self.N
      return if self.front == front
    end

    self.E
    adjust_front(front)
  end

  def equal_surfaces(other)
    (0..5).all?{|n| surface_val(n) == other.surface_val(n) }
  end

  def surface_val(num)
    @surfaces[num]
  end

  def has_value?(v)
    @surfaces.include?(v)
  end
end

def is_equal_dice(dice1, dice2)
  dice2.adjust_front(dice1.front)

  4.times do
    dice2.E
    return true if dice1.equal_surfaces(dice2)
  end

  false
end

n = gets.chomp.to_i
dices = []
n.times do |i|
  dices << Dice.new(gets.chomp.split.map(&:to_i))
end

dices.permutation(2) do |dice1, dice2|
  if is_equal_dice(dice1, dice2)
    puts 'No'
    exit
  end
end

puts 'Yes'