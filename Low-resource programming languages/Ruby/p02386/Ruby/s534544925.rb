# Dice for AOJ
class Dice
  def initialize(input)
    @t, @s, @e, @w, @n, @b = input
  end

  def roll_e
    tmp = @e
    @e = @t
    @t = @w
    @w = @b
    @b = tmp
  end

  def roll_n
    tmp = @n
    @n = @t
    @t = @s
    @s = @b
    @b = tmp
  end

  def roll_w
    tmp = @w
    @w = @t
    @t = @e
    @e = @b
    @b = tmp
  end

  def roll_s
    tmp = @s
    @s = @t
    @t = @n
    @n = @b
    @b = tmp
  end

  def spin_r
    tmp = @s
    @s = @e
    @e = @n
    @n = @w
    @w = tmp
  end

  def sameto(dice2)
    return true if same(dice2)

    roll_n
    return true if same(dice2)

    3.times do
      roll_e
      return true if same(dice2)
    end
    roll_n
    return true if same(dice2)

    false
  end

  def same(dice2)
    return false unless @t == dice2.t && @b == dice2.b
    return true if @s == dice2.s && @e == dice2.e \
        && @w == dice2.w && @n == dice2.n

    3.times do
      spin_r
      return true if @s == dice2.s && @e == dice2.e \
          && @w == dice2.w && @n == dice2.n
    end
    false
  end

  attr_reader :t
  attr_reader :s
  attr_reader :e
  attr_reader :w
  attr_reader :n
  attr_reader :b
end

n = gets.to_i
dices = []
n.times do |i|
  g = gets.split.map(&:to_i)
  dices[i] = Dice.new(g)
end

flag = false
(n - 1).times do |i|
  ((i + 1)...n).each do |j|
    flag |= dices[i].sameto(dices[j])
  end
end

if flag
  puts 'No'
else
  puts 'Yes'
end

