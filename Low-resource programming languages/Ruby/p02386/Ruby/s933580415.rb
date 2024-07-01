# frozen_string_literal: true

class Dice
  def initialize(params)
    @v = Array.new(6)
    (0..5).each do |i|
      @v[i] = params[i]
    end
    @phases = []
  end

  def faces
    @v
  end

  def slide(side_a, side_b, side_c, side_d)
    tmp = @v[side_a]
    @v[side_a] = @v[side_b]
    @v[side_b] = @v[side_c]
    @v[side_c] = @v[side_d]
    @v[side_d] = tmp
  end

  def rotate_atom(char)
    case char
    when 'N' then slide(0, 1, 5, 4)
    when 'E' then slide(0, 3, 5, 2)
    when 'W' then slide(0, 2, 5, 3)
    when 'S' then slide(0, 4, 5, 1)
    when 'D' then slide(1, 3, 4, 2)
    when 'U' then slide(1, 2, 4, 3)
    end
  end

  def rotate(string)
    string.chars.each do |c|
      rotate_atom(c)
    end
  end

  def top
    @v[0]
  end

  def register_phase
    4.times do
      @phases << Marshal.load(Marshal.dump(@v))
      rotate_atom('D')
    end
  end

  def register
    4.times do
      register_phase
      rotate_atom('S')
    end
    rotate_atom('W')
    register_phase
    rotate_atom('E')
    rotate_atom('E')
    register_phase
    rotate_atom('W')
  end

  def same_dice?(dice_y)
    register if @phases.empty?
    if dice_y.is_a?(Array)
      @phases.include?(dice_y)
    elsif dice_y.is_a?(Dice)
      @phases.include?(dice_y.faces)
    end
  end
end

n = gets.to_i
dices = n.times.map { Dice.new(readline.split(' ')) }
unique = (1...n).all? do |i|
  (0...i).all? { |j| !dices[i].same_dice?(dices[j]) }
end
puts unique ? 'Yes' : 'No'

